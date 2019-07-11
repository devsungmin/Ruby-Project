class HomeController < ApplicationController
    # ApplicationController 은 상위 클래스이다.
    def index
        render html: "당신은 #{request.remote_ip} 로 접속 하셨습니다."
    end
end