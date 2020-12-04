class ContactsController < ApplicationController

 def new
  @contact = Contact.new
 end

 def create
  @contact = Contact.create(name: params[:contact][:title], email: params[:contact][:address],content: params[:contact][:content])
  if @contact.save
   redirect_to new_contact_path
      # 一覧画面へ遷移して"ブログを作成しました！"とメッセージを表示します。
    else
      # 入力フォームを再描画します。
      render :new
    end
 end
end
