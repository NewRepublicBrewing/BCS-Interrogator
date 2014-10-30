module NRB
  class BCSInterrogator
    class API
      class Sysname < Endpoint
        # http://wiki.embeddedcc.com/index.php/Sysname.dat
        #   Entries in the sysname structure cannot be more than 16 characters
        #   Commas are not allowed 

        DESCRIPTIONS = [
                         'Firmware Version',
                         'Process 0 name',
                         'Process 1 name',
                         'Process 2 name',
                         'Process 3 name',
                         'Process 0 State 0 name',
                         'Process 0 State 1 name',
                         'Process 0 State 2 name',
                         'Process 0 State 3 name',
                         'Process 0 State 4 name',
                         'Process 0 State 5 name',
                         'Process 0 State 6 name',
                         'Process 0 State 7 name',
                         'Process 1 State 0 name',
                         'Process 1 State 1 name',
                         'Process 1 State 2 name',
                         'Process 1 State 3 name',
                         'Process 1 State 4 name',
                         'Process 1 State 5 name',
                         'Process 1 State 6 name',
                         'Process 1 State 7 name',
                         'Process 2 State 0 name',
                         'Process 2 State 1 name',
                         'Process 2 State 2 name',
                         'Process 2 State 3 name',
                         'Process 2 State 4 name',
                         'Process 2 State 5 name',
                         'Process 2 State 6 name',
                         'Process 2 State 7 name',
                         'Process 3 State 0 name',
                         'Process 3 State 1 name',
                         'Process 3 State 2 name',
                         'Process 3 State 3 name',
                         'Process 3 State 4 name',
                         'Process 3 State 5 name',
                         'Process 3 State 6 name',
                         'Process 3 State 7 name',
                         'Output 0 name',
                         'Output 1 name',
                         'Output 2 name',
                         'Output 3 name',
                         'Output 4 name',
                         'Output 5 name',
                         'Din 0 name',
                         'Din 1 name',
                         'Din 2 name',
                         'Din 3 name',
                         'Process 0 Win 0 name',
                         'Process 0 Win 1 name',
                         'Process 0 Win 2 name',
                         'Process 0 Win 3 name',
                         'Process 1 Win 0 name',
                         'Process 1 Win 1 name',
                         'Process 1 Win 2 name',
                         'Process 1 Win 3 name',
                         'Process 2 Win 0 name',
                         'Process 2 Win 1 name',
                         'Process 2 Win 2 name',
                         'Process 2 Win 3 name',
                         'Process 3 Win 0 name',
                         'Process 3 Win 1 name',
                         'Process 3 Win 2 name',
                         'Process 3 Win 3 name',
                         'Temp Probe 0 name',
                         'Temp Probe 1 name',
                         'Temp Probe 2 name',
                         'Temp Probe 3 name',
                         'Process 0 Timer 0 name',
                         'Process 0 Timer 1 name',
                         'Process 0 Timer 2 name',
                         'Process 0 Timer 3 name',
                         'Process 1 Timer 0 name',
                         'Process 1 Timer 1 name',
                         'Process 1 Timer 2 name',
                         'Process 1 Timer 3 name',
                         'Process 2 Timer 0 name',
                         'Process 2 Timer 1 name',
                         'Process 2 Timer 2 name',
                         'Process 2 Timer 3 name',
                         'Process 3 Timer 0 name',
                         'Process 3 Timer 1 name',
                         'Process 3 Timer 2 name',
                         'Process 3 Timer 3 name',
                         'Reserved 0',
                         'Reserved 1',
                         'Temp Probe 4 name',
                         'Temp Probe 5 name',
                         'Temp Probe 6 name',
                         'Temp Probe 7 name',
                         'Din 4 name',
                         'Din 5 name',
                         'Din 6 name',
                         'Din 7 name',
                         'Output 6 name',
                         'Output 7 name',
                         'Output 8 name',
                         'Output 9 name',
                         'Output 10 name',
                         'Output 11 name',
                         'Output 12 name',
                         'Output 13 name',
                         'Output 14 name',
                         'Output 15 name',
                         'Output 16 name',
                         'Output 17 name',
                         'Process 4 name',
                         'Process 5 name',
                         'Process 6 name',
                         'Process 7 name',
                         'Process 4 State 0 name',
                         'Process 4 State 1 name',
                         'Process 4 State 2 name',
                         'Process 4 State 3 name',
                         'Process 4 State 4 name',
                         'Process 4 State 5 name',
                         'Process 4 State 6 name',
                         'Process 4 State 7 name',
                         'Process 5 State 0 name',
                         'Process 5 State 1 name',
                         'Process 5 State 2 name',
                         'Process 5 State 3 name',
                         'Process 5 State 4 name',
                         'Process 5 State 5 name',
                         'Process 5 State 6 name',
                         'Process 5 State 7 name',
                         'Process 6 State 0 name',
                         'Process 6 State 1 name',
                         'Process 6 State 2 name',
                         'Process 6 State 3 name',
                         'Process 6 State 4 name',
                         'Process 6 State 5 name',
                         'Process 6 State 6 name',
                         'Process 6 State 7 name',
                         'Process 7 State 0 name',
                         'Process 7 State 1 name',
                         'Process 7 State 2 name',
                         'Process 7 State 3 name',
                         'Process 7 State 4 name',
                         'Process 7 State 5 name',
                         'Process 7 State 6 name',
                         'Process 7 State 7 name',
                         'Process 4 Win 0 name',
                         'Process 4 Win 1 name',
                         'Process 4 Win 2 name',
                         'Process 4 Win 3 name',
                         'Process 5 Win 0 name',
                         'Process 5 Win 1 name',
                         'Process 5 Win 2 name',
                         'Process 5 Win 3 name',
                         'Process 6 Win 0 name',
                         'Process 6 Win 1 name',
                         'Process 6 Win 2 name',
                         'Process 6 Win 3 name',
                         'Process 7 Win 0 name',
                         'Process 7 Win 1 name',
                         'Process 7 Win 2 name',
                         'Process 7 Win 3 name',
                         '4 Timer 0 name',
                         '4 Timer 1 name',
                         '4 Timer 2 name',
                         '4 Timer 3 name',
                         '5 Timer 0 name',
                         '5 Timer 1 name',
                         '5 Timer 2 name',
                         '5 Timer 3 name',
                         '6 Timer 0 name',
                         '6 Timer 1 name',
                         '6 Timer 2 name',
                         '6 Timer 3 name',
                         '7 Timer 0 name',
                         '7 Timer 1 name',
                         '7 Timer 2 name',
                         '7 Timer 3 name',
                         'Reserved 2',
                         'Reserved 3',
                         'Reserved 4',
                         'Reserved 5',
                         'Reserved 6',
                         'Reserved 7',
                         'Reserved 8',
                         'Reserved 9',
                         'Reserved 10',
                         'Reserved 11',
                         'Reserved 12',
                         'Reserved 13',
                         'Reserved 14',
                         'Reserved 15',
                         'Reserved 16',
                         'Reserved 17',
                         'Reserved 18',
                         'Reserved 19',
                         'Reserved 20',
                         'Reserved 21',
                         'Reserved 22',
                         'Reserved 23',
                         'Reserved 24',
                         'Reserved 25',
                         'Reserved 26',
                         'Reserved 27',
                         'Reserved 28',
                         'Reserved 29',
                         'Reserved 30',
                         'Reserved 31',
                         'Reserved 32',
                         'Reserved 33',
                         'Reserved 34'
                       ]

        ENDPOINT = '/sysname.dat'

        def input_names; data[43..46] + data[89..92]; end
        def output_names; data[37..42] + data[93..104]; end
        def temp_probe_names; data[63..66] + data[85..88]; end

      end
    end
  end
end
