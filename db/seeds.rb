# Put your seed data in here. This should be a series of .create! statements for
# each of your relevant models.
#
# You'll run it with rake db:seed


Auditor.create(name: "Melissa Bernal", email: "melissab@nedonate.org", phone: "402-578-5444")
Auditor.create(name: "Lynn Jones", email: "lynnj@nedonate.org", phone: "402-578-5445")
Auditor.create(name: "Mindy Michaels", email: "mindym@nedonate.org", phone: "402-578-5446")

Coordinator.create(name: "Mary Camperud", email: "maryc@nedonate.org", phone: "402-578-5447", auditor: Auditor.first)
Coordinator.create(name: "Amanda Pierce", email: "amandap@nedonate.org", phone: "402-578-5448", auditor: Auditor.second)
Coordinator.create(name: "Jordan Taylor", email: "jordant@nedonate.org", phone: "402-578-5449", auditor: Auditor.last)

Hospital.create(name: "Nebraska Medical Center", city: "Omaha", phone: "402-356-0000")
Hospital.create(name: "Regional West", city: "Scottsbluff", phone: "308-635-0000")
Hospital.create(name: "American General", city: "Gering", phone: "308-632-0000")

Patient.create(name: "Jane Doe", gender: "female", term_date: 04012016, organs_list: "heart, lungs, liver", hospital: Hospital.first)
Patient.create(name: "Jack Daniels", gender: "male", term_date: 04122016, organs_list: "heart, liver", hospital: Hospital.second)
Patient.create(name: "Jim Beam", gender: "male", term_date: 03122017, organs_list: "heart, lungs, kidney", hospital: Hospital.last)