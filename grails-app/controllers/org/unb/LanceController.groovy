package org.unb

import org.springframework.dao.DataIntegrityViolationException

class LanceController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [lanceInstanceList: Lance.list(params), lanceInstanceTotal: Lance.count()]
    }

    def create() {
        [lanceInstance: new Lance(params)]
    }

    def save() {
        def lanceInstance = new Lance(params)
        if (!lanceInstance.save(flush: true)) {
            render(view: "create", model: [lanceInstance: lanceInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'lance.label', default: 'Lance'), lanceInstance.id])
        redirect(action: "show", id: lanceInstance.id)
    }

    def show(Long id) {
        def lanceInstance = Lance.get(id)
        if (!lanceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lance.label', default: 'Lance'), id])
            redirect(action: "list")
            return
        }

        [lanceInstance: lanceInstance]
    }

    def edit(Long id) {
        def lanceInstance = Lance.get(id)
        if (!lanceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lance.label', default: 'Lance'), id])
            redirect(action: "list")
            return
        }

        [lanceInstance: lanceInstance]
    }

    def update(Long id, Long version) {
        def lanceInstance = Lance.get(id)
        if (!lanceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lance.label', default: 'Lance'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (lanceInstance.version > version) {
                lanceInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'lance.label', default: 'Lance')] as Object[],
                          "Another user has updated this Lance while you were editing")
                render(view: "edit", model: [lanceInstance: lanceInstance])
                return
            }
        }

        lanceInstance.properties = params

        if (!lanceInstance.save(flush: true)) {
            render(view: "edit", model: [lanceInstance: lanceInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'lance.label', default: 'Lance'), lanceInstance.id])
        redirect(action: "show", id: lanceInstance.id)
    }

    def delete(Long id) {
        def lanceInstance = Lance.get(id)
        if (!lanceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lance.label', default: 'Lance'), id])
            redirect(action: "list")
            return
        }

        try {
            lanceInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'lance.label', default: 'Lance'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'lance.label', default: 'Lance'), id])
            redirect(action: "show", id: id)
        }
    }
}
