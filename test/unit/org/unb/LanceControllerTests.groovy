package org.unb



import org.junit.*
import grails.test.mixin.*

@TestFor(LanceController)
@Mock(Lance)
class LanceControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/lance/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.lanceInstanceList.size() == 0
        assert model.lanceInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.lanceInstance != null
    }

    void testSave() {
        controller.save()

        assert model.lanceInstance != null
        assert view == '/lance/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/lance/show/1'
        assert controller.flash.message != null
        assert Lance.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/lance/list'

        populateValidParams(params)
        def lance = new Lance(params)

        assert lance.save() != null

        params.id = lance.id

        def model = controller.show()

        assert model.lanceInstance == lance
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/lance/list'

        populateValidParams(params)
        def lance = new Lance(params)

        assert lance.save() != null

        params.id = lance.id

        def model = controller.edit()

        assert model.lanceInstance == lance
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/lance/list'

        response.reset()

        populateValidParams(params)
        def lance = new Lance(params)

        assert lance.save() != null

        // test invalid parameters in update
        params.id = lance.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/lance/edit"
        assert model.lanceInstance != null

        lance.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/lance/show/$lance.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        lance.clearErrors()

        populateValidParams(params)
        params.id = lance.id
        params.version = -1
        controller.update()

        assert view == "/lance/edit"
        assert model.lanceInstance != null
        assert model.lanceInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/lance/list'

        response.reset()

        populateValidParams(params)
        def lance = new Lance(params)

        assert lance.save() != null
        assert Lance.count() == 1

        params.id = lance.id

        controller.delete()

        assert Lance.count() == 0
        assert Lance.get(lance.id) == null
        assert response.redirectedUrl == '/lance/list'
    }
}
