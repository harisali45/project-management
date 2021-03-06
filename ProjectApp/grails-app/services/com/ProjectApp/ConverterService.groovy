package com.ProjectApp

import grails.transaction.Transactional
import org.grails.web.json.JSONObject
import org.springframework.util.LinkedMultiValueMap
import org.springframework.util.MultiValueMap

class ConverterService {

    def convertToMap(Object obj, List properties) {
        MultiValueMap<String, String> form = new LinkedMultiValueMap<String, String>()

        properties.each { prop ->
            if(obj.getAt(prop)) {
                form.add(prop.toString(), obj.getAt(prop).toString())
            }
        }
        form
    }

}
