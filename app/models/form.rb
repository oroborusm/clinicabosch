class Form < ActiveRecord::Base
	validates_presence_of :nombre, message: "Tu nombre es requerido para la inscripción"
	validates :nombre, length: { minimum: 5, too_short: "debe tener al menos %{count} caracteres" }
	validates_presence_of :email, length: {minimum:4}, message: "Tu correo es requerido para la inscripción"
	validates_uniqueness_of :email, message: "Este correo ya fue registrado"
	validates_presence_of :telefono, message: "Este campo es requerido"

end
