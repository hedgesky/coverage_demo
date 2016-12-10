# Сын любит и уважает родителей, поэтому никогда не уходит гулять,
# не спросив разрешения. Спрашивать он может и у мамы, и у папы.
# Ну и, конечно, он может одеваться и делать ДЗ.
class Child
  attr_reader :homework_done, :scarf_put_on

  def initialize(mother, father)
    @mother = mother
    @father = father
    @homework_done = false
    @scarf_put_on = false
  end

  def do_homework!
    @homework_done = true
  end

  def put_on_scarf!
    @scarf_put_on = true
  end

  def walk_permitted?(whom_to_ask)
    parent =
      if whom_to_ask == :mother
        @mother
      else
        @father
      end

    parent.permit_walk?(self)
  end
end
