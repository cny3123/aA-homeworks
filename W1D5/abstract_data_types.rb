class Stack
    def initialize
      # create ivar to store stack here!
      @array = []
    end

    def push(el)
      # adds an element to the stack
      array.push(el)
      el
    end

    def pop
      # removes one element from the stack
      array.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      array.last
    end

    private

    attr_reader :array
  end

  class Queue

    def initialize
      @array = []
    end

    def enqueue(el)
      array.push(el)
      el
    end

    def dequeue
      array.shift
    end

    def peek
      array.first
    end

    private

    attr_reader :array

  end
