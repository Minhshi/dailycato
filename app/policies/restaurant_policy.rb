class RestaurantPolicy < ApplicationPolicy

def index?
  true
end

def show?
  true
end

def create?
  user.admin == true
end

def edit?
  user.admin == true
end

def update?
  user.admin == true
end

def destroy?
  user.admin == true
end

def restaurant
  record
end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
