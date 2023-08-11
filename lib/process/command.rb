require_relative '../validations/valid_commands'

module Process
  class Command
    def self.interpret(command)
      arguments = command.split(/\s+/)
      command = arguments.first.to_s.downcase.to_sym
      arguments = arguments.last

      raise ArgumentError, 'The command is invalid ' unless ::Validations::ValidCommands::VALID_COMMANDS.include?(command)

      case command
      when :place
        raise ArgumentError, 'The command is invalid' if arguments.nil?

        tokens = arguments.split(/,/)

        raise ArgumentError, 'The command is invalid' unless tokens.count > 3

        x = tokens[0].to_i
        y = tokens[1].to_i
        direction = tokens[2].downcase.to_sym
        color = tokens[3].downcase.to_sym

        return { method_name: 'place', params: [x, y, direction, color]}
      when :move
        token = arguments
        step = token.to_i.zero? ? 1 : token.to_i
        return { method_name: 'move', params: [step] }
      when :left
        return { method_name: 'revolve_left', params: [] }
      when :right
        return { method_name: 'revolve_right', params: [] }
      when :report
        return { method_name: 'report', params: [] }
      else
        raise ArgumentError, 'The command is invalid'
      end
    end
  end
end
