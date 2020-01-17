import 'package:sightlycity/models/contact.dart';

List<Contact> getEmergenceContacts() {
  return [
    Contact(
        name: 'Аварийная служба',
        phone: '+7 (495) 541-60-10',
        email: 'abonent@gkhvidnoe.ru')
  ];
}

List<Contact> getElevatorContacts() {
  return [
    Contact(
        name: 'Лифтовая диспетчерская',
        description: "ООО МиТОЛ",
        phone: '+7 (495) 548-46-97')
  ];
}

List<Contact> getTechnicianContacts() {
  return [
    Contact(name: "Техник Ольга", phone: "+7 (966) 356-94-95"),
    Contact(name: 'Сантехник Роман', phone: '+7 (901) 381-49-91'),
    Contact(name: 'Электрик Сергей', phone: '+7 (937) 731-66-90'),
    Contact(name: 'Слесарь-сантехник Андрей', phone: '+7 (977) 459-76-58')
  ];
}

List<Contact> getManagementCompanyContacts() {
  return [
    Contact(name: 'Аварийная служба', phone: '+7 (495) 541-60-10'),
    Contact(
        name: 'Абонентский отдел',
        phone: '+7 (495) 541-01-46',
        email: 'abonent@gkhvidnoe.ru',
        website: "http://gkhvidnoe.ru"),
    Contact(
        name: 'Приемная',
        phone: '+7 (495) 541-00-21',
        email: '5410021@mail.ru'),
    Contact(
        name: 'ПТС', phone: '+7 (495) 548-04-25', email: 'pts@gkhvidnoe.ru'),
    Contact(
        name: 'Юридический отдел',
        phone: '+7 (495) 541-23-33',
        email: 'pravo@gkhvidnoe.ru'),
    Contact(name: 'Отдел кадров', phone: '+7 (495) 541-57-56'),
    Contact(name: 'Финансово-экономический отдел', phone: '+7 (495) 548-04-34'),
    Contact(name: 'ЦУ КИПА (домофоны)', phone: '+7 (495) 541-57-56'),
    Contact(
        name: 'IT отдел (проблемы с доступом на сайт)',
        email: '4955488977@mail.ru'),
  ];
}

List<Contact> getGarbageCollectionContacts() {
  return [
    Contact(
        name: 'Контакт-центр',
        description: 'Каширский региональный оператор',
        phone: '+7 (495) 548-46-97',
        email: "info@kashirskyro.ru",
        website: "https://kashirskyro.ru")
  ];
}

List<Contact> getRussianPostContacts() {
  return [
    Contact(
        name: 'Почта России',
        description: '142702',
        phone: '+7 (800) 100-00-00',
        website: 'https://pochta.ru/',
        address: '142702, г. Видное, Ленинский р-он, Петровский проезд, д. 24',
        coords: [55.5367, 37.6631])
  ];
}

List<Contact> getWebServicesContacts() {
  return [
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
