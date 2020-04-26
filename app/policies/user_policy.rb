class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index
      true
    end

    def show?
      true
    end


    def update?
      true
    end

  end
end
