class RestaurantPolicy < ApplicationPolicy

def index?
  true
end

def show?
  true
end

def update?
  restaurant.owner == user
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
