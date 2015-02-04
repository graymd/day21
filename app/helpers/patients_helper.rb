module PatientsHelper

  def workflow_state_helper(patient)
    if patient.workflow_state == "waiting_room"
      "Patient is in waiting room."
    elsif patient.workflow_state == "doctor_checkup"
      "Patient is with the doctor."
    elsif patient.workflow_state == "xray"
      "Patient is in xray."
    elsif patient.workflow_state == "surgery"
      "Patient is in surgery."
    elsif patient.workflow_state == "pay_bill"
      "Patient is paying bill."
    elsif patient.workflow_state == "left"
      "Patient has left."
    end
  end



#for review
# def patient_state?(patient)
#     array_of_links = []
#     waiting_room_links = [
#       (link_to "Doctor Check-Up", check_patient_clinic_patient_path(@clinic, @patient), method: :patch),
#       (link_to "X-Ray room", examine_patient_clinic_patient_path(@clinic, @patient), method: :patch),
#       (link_to "Surgery", operate_patient_clinic_patient_path(@clinic, @patient), method: :patch),
#       (link_to "Discharged", leave_patient_clinic_patient_path(@clinic, @patient), method: :patch)
#     ]
#     doctor_links = [
#       (link_to "X-Ray room", examine_patient_clinic_patient_path(@clinic, @patient), method: :patch),
#       (link_to "Surgery", operate_patient_clinic_patient_path(@clinic, @patient), method: :patch),
#       (link_to "Billing", pay_patient_clinic_patient_path(@clinic, @patient), method: :patch),
#     ]
#     xray_links = [
#       (link_to "Doctor Check-Up", check_patient_clinic_patient_path(@clinic, @patient), method: :patch),
#       (link_to "Surgery", operate_patient_clinic_patient_path(@clinic, @patient), method: :patch),
#       (link_to "Billing", pay_patient_clinic_patient_path(@clinic, @patient), method: :patch)
#     ]
#     surgery_links = [
#       (link_to "Doctor Check-Up", check_patient_clinic_patient_path(@clinic, @patient), method: :patch),
#       (link_to "X-Ray room", examine_patient_clinic_patient_path(@clinic, @patient), method: :patch),
#       (link_to "Billing", pay_patient_clinic_patient_path(@clinic, @patient), method: :patch),
#     ]
#     paying_links = [
#       (link_to "Discharged", leave_patient_clinic_patient_path(@clinic, @patient), method: :patch)
#     ]
#     # if the patient has the checkup event on it
#       # array_of_links.push(checkup link_to)

#     # if the patient has the xray event on it
#       # array_of_links.push(xray link_to)

#     if patient.waiting_room?
#       array_of_links.push(waiting_room_links)
#       return array_of_links.join(' | ').html_safe
#     elsif patient.doctor?
#       array_of_links.push(doctor_links)
#       return array_of_links.join(' | ').html_safe
#     elsif patient.xray?
#       array_of_links.push(xray_links)
#       return array_of_links.join(' | ').html_safe
#     elsif patient.surgery?
#       array_of_links.push(surgery_links)
#       return array_of_links.join(' | ').html_safe
#     elsif patient.paying?
#       array_of_links.push(paying_links)
#       return array_of_links.join(' | ').html_safe
#     end
#   end



end
