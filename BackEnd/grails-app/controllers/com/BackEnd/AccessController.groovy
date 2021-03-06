package com.BackEnd

import grails.converters.JSON
import org.apache.commons.lang.RandomStringUtils

import javax.security.auth.login.FailedLoginException


class AccessController {

    def emailService

    def forgotPassword() {
        ResponseMessage response = new ResponseMessage()

        User user = User.findByEmail(params.email)

        if(!user) {
            response.message = g.message(code: "user.email.notfound")
        } else {
            String password = RandomStringUtils.random(9,true, true)
            user.password = password
            user.save(flush:true)
            Email email = new Email(toAddress: params.email, subject: "ProjectManagement: Password Reset",
                    content: "Password reset successful for user ${user.username}, your new password is ${password}")
            emailService.sendEmail(email)
            response.success = true
        }

        Map model = [result: response]
        render model as JSON
    }

    def invite(Long referrerId, String newUserName, String newUserEmail) {
        User referrer = User.get(referrerId)
        ResponseMessage result = new ResponseMessage()
        Email email = new Email (toAddress: newUserEmail, subject: "Welcome to ProjectManagement")
        emailService.invite(email, referrer, newUserName)
        result.success=true
        Map model = [result: result]
        render model as JSON

    }
}