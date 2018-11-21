class RestaurantPolicy < ApplicationPolicy

def index?
  true
end

def show?
  true
end

def create?
  true
end

def edit?
  restaurant.user == user
end

def update?
  restaurant.user == user
end

def destroy?
  restaurant.user == user
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
