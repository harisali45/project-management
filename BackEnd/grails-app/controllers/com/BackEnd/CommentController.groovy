package com.BackEnd

import grails.converters.JSON
import grails.core.GrailsApplication
import grails.rest.RestfulController
import grails.util.Holders

class CommentController extends RestfulController{

    static responseFormats = ['json']
    def notificationService
    def errorService

    CommentController() {
        super(Comment)
    }

    def getComments(Long taskId) {
        def comments = Comment.findAllByTask(Task.get(taskId), [sort: "created", order: "desc"])
        Map model = [comments : comments]
        render model as JSON
    }

    def save(Comment comment) {
        ResponseMessage responseMessage = new ResponseMessage()
        if( !comment.save(flush: true) ) {
            responseMessage.message = errorService.getErrorMsg(comment)
        } else {
            responseMessage.success = true
            notificationService.addNotification(comment.task.project, "Comment posted in ${comment.task.title} task of ${comment.task.project.title}",
            "${Holders.config.taskLink}${comment.task.id}", Holders.config.commentIcon)
        }
        Map model = [result: responseMessage]
        render model as JSON
    }

}
