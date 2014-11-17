package org.unb

import org.springframework.dao.DataIntegrityViolationException

class ArrematanteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [arrematanteInstanceList: Arrematante.list(params), arrematanteInstanceTotal: Arrematante.count()]
    }

    def create() {
        [arrematanteInstance: new Arrematante(params)]
    }

    def save() {
        def arrematanteInstance = new Arrematante(params)
        if (!arrematanteInstance.save(flush: true)) {
            render(view: "create", model: [arrematanteInstance: arrematanteInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'arrematante.label', default: 'Arrematante'), arrematanteInstance.id])
        redirect(action: "show", id: arrematanteInstance.id)
    }

    def show(Long id) {
        def arrematanteInstance = Arrematante.get(id)
        if (!arrematanteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'arrematante.label', default: 'Arrematante'), id])
            redirect(action: "list")
            return
        }

        [arrematanteInstance: arrematanteInstance]
    }

    def edit(Long id) {
        def arrematanteInstance = Arrematante.get(id)
        if (!arrematanteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'arrematante.label', default: 'Arrematante'), id])
            redirect(action: "list")
            return
        }

        [arrematanteInstance: arrematanteInstance]
    }

    def update(Long id, Long version) {
        def arrematanteInstance = Arrematante.get(id)
        if (!arrematanteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'arrematante.label', default: 'Arrematante'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (arrematanteInstance.version > version) {
                arrematanteInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'arrematante.label', default: 'Arrematante')] as Object[],
                          "Another user has updated this Arrematante while you were editing")
                render(view: "edit", model: [arrematanteInstance: arrematanteInstance])
                return
            }
        }

        arrematanteInstance.properties = params

        if (!arrematanteInstance.save(flush: true)) {
            render(view: "edit", model: [arrematanteInstance: arrematanteInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'arrematante.label', default: 'Arrematante'), arrematanteInstance.id])
        redirect(action: "show", id: arrematanteInstance.id)
    }

    def delete(Long id) {
        def arrematanteInstance = Arrematante.get(id)
        if (!arrematanteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'arrematante.label', default: 'Arrematante'), id])
            redirect(action: "list")
            return
        }

        try {
            arrematanteInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'arrematante.label', default: 'Arrematante'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'arrematante.label', default: 'Arrematante'), id])
            redirect(action: "show", id: id)
        }
    }
}
