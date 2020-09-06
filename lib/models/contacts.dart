import 'package:sightlycity/models/contact.dart';

List<Contact> getEmergenceContacts() {
  return [
    Contact(
      name: 'Аварийная служба',
      phones: ['+7 (495) 541-60-10'],
      email: 'abonent@gkhvidnoe.ru',
    )
  ];
}

List<Contact> getTechnicianContacts() {
  return [
    Contact(
      name: 'Техник Ольга',
      phones: ['+7 (966) 356-94-95'],
      workingHours: '8:00-18:00',
    ),
    Contact(
      name: 'Сантехник Роман',
      phones: ['+7 (901) 381-49-91'],
      workingHours: '8:00-18:00 с 1 по 15 число месяца',
    ),
    Contact(
      name: 'Слесарь-сантехник Андрей',
      phones: ['+7 (977) 459-76-58'],
      workingHours: '8:00-18:00 с 15 по конец месяца',
    )
  ];
}

List<Contact> getManagementCompanyContacts() {
  return [
    // Contact(name: 'Аварийная служба', phones: '+7 (495) 541-60-10'),
    Contact(
      name: 'Абонентский отдел',
      phones: ['+7 (495) 541-01-46'],
      email: 'abonent@gkhvidnoe.ru',
      website: "http://gkhvidnoe.ru",
    ),
    Contact(
      name: 'Приемная',
      phones: ['+7 (495) 541-00-21'],
      email: '5410021@mail.ru',
    ),
    Contact(
      name: 'ПТС',
      description: 'Производственно-техническая служба',
      phones: ['+7 (495) 548-04-25'],
      email: 'pts@gkhvidnoe.ru',
    ),
    Contact(
      name: 'Юридический отдел',
      phones: ['+7 (495) 541-23-33'],
      email: 'pravo@gkhvidnoe.ru',
    ),
    Contact(
      name: 'Финансово-экономический отдел',
      phones: ['+7 (495) 548-04-34'],
    ),
    Contact(
      name: 'ЦУ КИПА (домофоны)',
      phones: ['+7 (495) 541-57-56'],
    )
  ];
}

List<Contact> getElevatorContacts() {
  return [
    Contact(
      name: 'Лифтовая диспетчерская',
      description: "ООО ЮГ ЛИФТ",
      phones: ['+7 (495) 548-46-97'],
    )
  ];
}

List<Contact> getGarbageCollectionContacts() {
  return [
    Contact(
      name: 'Контакт-центр',
      description: 'Каширский региональный оператор',
      phones: ['+7 (495) 548-46-97'],
      email: "info@kashirskyro.ru",
      website: "https://kashirskyro.ru",
    )
  ];
}

List<Contact> getMultifunctionalContacts() {
  return [
    Contact(
      name: 'МФЦ Московской области',
      description: 'Единый контакт-центр МФЦ Московской области',
      phones: ['+7 (800) 550-50-30'],
    ),
    Contact(
        name: 'Росреестр',
        description: 'Единый контакт-центр Росреестра',
        phones: ['+7 (800) 100-34-34'],
        website: 'https://rosreestr.ru',
        address: '142703, МО, Ленинский р-н, г. Видное, ул. Лемешко, 17'),
  ];
}

List<Contact> getMedicalContacts() {
  return [
    Contact(
      name: 'Поликлиника "Бутово-Парк"',
      description: 'Вызов врача на дом г. Видное',
      phones: ['+7 (498) 917-64-10', '+7 (498) 917-64-11'],
      website: 'http://vidnoe-bolnica.ru',
      address:
          '142702, г. Видное, Ленинский р-он, деревня Бутово, ЖК Бутово парк, д. 20/2',
    )
  ];
}

List<Contact> getPoliceContacts() {
  return [
    Contact(
      name: 'Участковый',
      description: 'Скорняков Владимир Борисович',
      phones: ['+7 (999) 099-09-49'],
    ),
    Contact(
      name: 'Видновский гор отдел полиции',
      phones: ['+7 (495) 549-55-21'],
    )
  ];
}

List<Contact> getRussianPostContacts() {
  return [
    Contact(
      name: 'Почта России',
      description: '142702',
      phones: [
        '+7 (800) 100-00-00',
        '+7 (495) 541-07-44',
        '+7 (495) 541-66-78'
      ],
      website: 'https://pochta.ru/',
      address: '142702, г. Видное, Ленинский р-он, Петровский проезд, д. 24',
      coords: [55.5367, 37.6631],
      workingHours: 'Вт-Пт 09:00-18:00, Сб 09:00-16:00, Пн Вс - выходной',
    )
  ];
}

List<Contact> getWebServicesContacts() {
  return [
    Contact(
      name: 'МосОблЕИРЦ - оплата ЖКХ',
      description: 'Оплата ЖКХ',
      website: 'https://lkk.mosobleirc.ru',
      phones: ['+7 (496) 245-15-99'],
      workingHours: '08:00-22:00',
    ),
    Contact(
      name: 'Единая Диспетчерская Служба МО',
      description:
          'Сервис для жителей Подмосковья, который позводяет решать проблемы в многоквартирных домах без похода в управляющую компанию и заполнения бумажных документов.',
      website: 'https://eds.mosreg.ru/',
    ),
    Contact(
      name: 'Добродел',
      description: 'Сообщи правительству Московской Области о проблемах.',
      website: 'https://dobrodel.mosreg.ru/',
    )
  ];
}
