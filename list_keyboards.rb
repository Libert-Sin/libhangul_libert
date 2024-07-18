require 'ffi'

module Hangul
    extend FFI::Library
    ffi_lib 'hangul'

    attach_function :hangul_keyboard_list_get_count, [], :uint
    attach_function :hangul_keyboard_list_get_keyboard_id, [:uint], :string
    attach_function :hangul_keyboard_list_get_keyboard_name, [:uint], :string
end

def list_keyboards
    count = Hangul.hangul_keyboard_list_get_count
    puts "Total keyboards: #{count}"

    count.times do |i|
        id = Hangul.hangul_keyboard_list_get_keyboard_id(i)
        name = Hangul.hangul_keyboard_list_get_keyboard_name(i)
        puts "Keyboard #{i}: #{id} (#{name})"
    end
end

list_keyboards
