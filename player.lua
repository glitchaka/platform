Player = {}
function Player:load()
    self.x = 100
    self.y = 0
    self.width = 20
    self.height = 60
    self.xvel = 0
    self.yvel = 0
    self.maxSpeed = 200
    self.acceleration = 4000
    self.friction = 3500

    self.physics = {}
    self.physics.body = love.physics.newBody(World, self.x, self.y, "dynamic")
    self.physics.body:setFixedRotation(true)
    self.physics.shape = love.physics.newRectangleShape(self.width, self.height)
    self.physics.fixture = love.physics.newFixture(self.physics.body, self.physics.shape)
    
end

function Player:update(dt)
    
end

function Player:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
