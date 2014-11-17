package org.unb



import org.junit.*
import grails.test.mixin.*

@TestFor(ArrematanteController)
@Mock(Arrematante)
class ArrematanteControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/arrematante/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.arrematanteInstanceList.size() == 0
        assert model.arrematanteInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.arrematanteInstance != null
    }

    void testSave() {
        controller.save()

        assert model.arrematanteInstance != null
        assert view == '/arrematante/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/arrematante/show/1'
        assert controller.flash.message != null
        assert Arrematante.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/arrematante/list'

        populateValidParams(params)
        def arrematante = new Arrematante(params)

        assert arrematante.save() != null

        params.id = arrematante.id

        def model = controller.show()

        assert model.arrematanteInstance == arrematante
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/arrematante/list'

        populateValidParams(params)
        def arrematante = new Arrematante(params)

        assert arrematante.save() != null

        params.id = arrematante.id

        def model = controller.edit()

        assert model.arrematanteInstance == arrematante
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/arrematante/list'

        response.reset()

        populateValidParams(params)
        def arrematante = new Arrematante(params)

        assert arrematante.save() != null

        // test invalid parameters in update
        params.id = arrematante.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/arrematante/edit"
        assert model.arrematanteInstance != null

        arrematante.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/arrematante/show/$arrematante.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        arrematante.clearErrors()

        populateValidParams(params)
        params.id = arrematante.id
        params.version = -1
        controller.update()

        assert view == "/arrematante/edit"
        assert model.arrematanteInstance != null
        assert model.arrematanteInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/arrematante/list'

        response.reset()

        populateValidParams(params)
        def arrematante = new Arrematante(params)

        assert arrematante.save() != null
        assert Arrematante.count() == 1

        params.id = arrematante.id

        controller.delete()

        assert Arrematante.count() == 0
        assert Arrematante.get(arrematante.id) == null
        assert response.redirectedUrl == '/arrematante/list'
    }
}
