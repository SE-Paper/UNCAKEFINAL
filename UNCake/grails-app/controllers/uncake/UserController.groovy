package uncake

class UserController {

    def index() {
        render (view: "show") }
    private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']

    def upload_avatar() {
        def user = session.user // or however you select the current user

        // Get the avatar file from the multi-part request
        def f = request.getFile('avatar')

        // List of OK mime-types
        if (!okcontents.contains(f.getContentType())) {
            flash.message = "Avatar must be one of: ${okcontents}"
            render(view:'select_avatar', model:[user:user])
            return
        }

        // Save the image and mime type
        user.avatar = f.bytes
        user.avatarType = f.contentType
        log.info("File uploaded: $user.avatarType")

        // Validation works, will check if the image is too big
        if (!user.save()) {
            render(view:'select_avatar', model:[user:user])
            return
        }
        flash.message = "Avatar (${user.avatarType}, ${user.avatar.size()} bytes) uploaded."
        redirect(view:'show')
    }

    def avatar_image() {
        def avatarUser = User.get(params.id)
        if (!avatarUser || !avatarUser.avatar || !avatarUser.avatarType) {
            response.sendError(404)
            return
        }
        response.contentType = avatarUser.avatarType
        response.contentLength = avatarUser.avatar.size()
        OutputStream out = response.outputStream
        out.write(avatarUser.avatar)
        out.close()
    }
}
