module Manager
  class GestionnairesController < Manager::ApplicationController
    def reinvite
      gestionnaire = Gestionnaire.find(params[:id])
      gestionnaire.invite!
      flash[:notice] = "Instructeur réinvité."
      redirect_to manager_gestionnaire_path(gestionnaire)
    end
  end
end
