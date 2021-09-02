class Users {
  final String name;
  final String imagUrl;
  final String msg;
  final bool onLine;
  final bool isRead;
  final bool? isSend;
  final String time;
  final int numMsg;
  final bool hasState;
  final bool? seen;
  final bool call;
  final int typeCalling;

  Users({
    required this.seen,
    required this.name,
    required this.imagUrl,
    required this.msg,
    required this.onLine,
    required this.isRead,
    required this.isSend,
    required this.time,
    required this.numMsg,
    required this.hasState,
    required this.call,
    required this.typeCalling,
  });
}

List<Users> usersList = [
  Users(
    seen: true,
    name: 'Mohamed Salama',
    imagUrl:
        "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
    msg: "who are you mahmoud?",
    onLine: true,
    isRead: false,
    isSend: true,
    time: '12:20 PM',
    numMsg: 2,
    hasState: true,
    call: true,
    typeCalling: 0,

  ),
  Users(
    seen: false,
    name: 'Boody',
    imagUrl:
        "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
    msg: "I am meet you in the school okay ?",
    onLine: false,
    isRead: false,
    isSend: true,
    time: '1:20 PM',
    numMsg: 1,
    hasState: false,
    call: true,
    typeCalling: 1,
  ),
  Users(
    seen: false,
    name: 'Ahmad Mohamed',
    imagUrl:
        "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
    msg: "Iam fine thank you ahmad",
    onLine: true,
    isRead: true,
    isSend: true,
    time: '2 AM',
    numMsg: 0,
    hasState: true,
    call: false,
    typeCalling: 0,
  ),
  Users(
    seen: false,
    name: 'AbdelRahman Mohamed',
    imagUrl:
        "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
    msg: "who are you mahmoud ?",
    onLine: false,
    isRead: false,
    isSend: false,
    time: '12:00 AM',
    numMsg: 5,
    hasState: true,
    call: true,
    typeCalling: 0,
  ),
  Users(
    seen: false,
    name: 'Tarek mohamed',
    imagUrl:
        "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
    msg: "okay",
    onLine: true,
    isRead: true,
    isSend: null,
    time: '5.30 PM',
    numMsg: 0,
    hasState: false,
    call: true,
    typeCalling: 1,
  ),
  Users(
    seen: true,
    name: 'Omar Mohamed',
    imagUrl:
        "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
    msg: "ooh  nice idea ",
    onLine: false,
    isRead: false,
    isSend: true,
    time: 'yesterday',
    numMsg: 2,
    hasState: true,
    call: false,
    typeCalling: 0,
  ),
  Users(
    seen: true,
    name: 'Mona Mohamed ',
    imagUrl:
        "https://images.unsplash.com/photo-1614436163996-25cee5f54290?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
    msg: "who are you mahmoud ?",
    onLine: true,
    isRead: false,
    isSend: null,
    time: '1:00 PM',
    numMsg: 0,
    hasState: false,
    call: true,
    typeCalling: 1,
  ),
  Users(
    seen: false,
    name: 'Nada Ahmad',
    imagUrl:
        "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
    msg: "That is so funny",
    onLine: true,
    isRead: false,
    isSend: null,
    time: '3:45 AM',
    numMsg: 0,
    hasState: false,
    call: true,
    typeCalling: 1,
  ),
  Users(
    seen: false,
    name: 'Mohamed  Khaled',
    imagUrl:
        "https://images.unsplash.com/photo-1563237023-b1e970526dcb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
    msg: "who are you mahmoud",
    onLine: true,
    isRead: false,
    isSend: true,
    time: '12:00 AM',
    numMsg: 2,
    hasState: true,
    call: false,
    typeCalling: 0,
  ),
  Users(
    seen: true,
    name: 'Mohamed Salama',
    imagUrl:
        "https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
    msg: "who are you mahmoud",
    onLine: true,
    isRead: false,
    isSend: true,
    time: '12:00 AM',
    numMsg: 0,
    hasState: true,
    call: true,
    typeCalling: 1,
  ),
  Users(
    seen: false,
    name: 'Mohamed Salama',
    imagUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    msg: "who are you mahmoud?",
    onLine: true,
    isRead: false,
    isSend: true,
    time: '12:20 PM',
    numMsg: 2,
    hasState: false,
    call: true,
    typeCalling: 0,
  ),
  Users(
    seen: true,
    name: 'Boody',
    imagUrl:
        'https://images.unsplash.com/photo-1571826867433-29518cc0b091?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    msg: "I am meet you in the school okay ?",
    onLine: false,
    isRead: false,
    isSend: true,
    time: '1:20 PM',
    numMsg: 1,
    hasState: true,
    call: false,
    typeCalling: 0,
  ),
  Users(
    seen: false,
    name: 'Ahmad Mohamed',
    imagUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    msg: "Iam fine thank you ahmad",
    onLine: true,
    isRead: true,
    isSend: true,
    time: '2:00 AM',
    numMsg: 0,
    hasState: false,
    call: true,
    typeCalling: 1,
  ),
  Users(
    seen: true,
    name: 'AbdelRahman Mohamed',
    imagUrl:
        'https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    msg: "who are you mahmoud ?",
    onLine: false,
    isRead: false,
    isSend: false,
    time: '12:00 AM',
    numMsg: 5,
    hasState: true,
    call: false,
    typeCalling: 0,
  ),
];
