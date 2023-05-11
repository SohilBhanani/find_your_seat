//Data comming from API
enum Position { lower, middle, upper, sideUpper, sideLower }

String positionParser(Position p) {
  switch (p) {
    case Position.lower:
      return "LOWER";
    case Position.middle:
      return "MIDDLE";
    case Position.upper:
      return "UPPER";
    case Position.sideUpper:
      return "SIDE UPPER";
    case Position.sideLower:
      return "SIDE LOWER";
  }
}

enum Status { available, notAvailable, booked }

List<Map<String, dynamic>> coachData = [
  {
    "compartment": 1,
    "seats": [
      {
        "seatNo": 1,
        "position": Position.lower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 2,
        "position": Position.middle,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 3,
        "position": Position.upper,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 4,
        "position": Position.lower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 5,
        "position": Position.middle,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 6,
        "position": Position.upper,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 7,
        "position": Position.sideLower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 8,
        "position": Position.sideUpper,
        "isFocussed": false,
        "status": Status.available
      },
    ]
  },
  {
    "compartment": 2,
    "seats": [
      {
        "seatNo": 9,
        "position": Position.lower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 10,
        "position": Position.middle,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 11,
        "position": Position.upper,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 12,
        "position": Position.lower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 13,
        "position": Position.middle,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 14,
        "position": Position.upper,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 15,
        "position": Position.sideLower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 16,
        "position": Position.sideUpper,
        "isFocussed": false,
        "status": Status.available
      },
    ]
  },
  {
    "compartment": 3,
    "seats": [
      {
        "seatNo": 17,
        "position": Position.lower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 18,
        "position": Position.middle,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 19,
        "position": Position.upper,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 20,
        "position": Position.lower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 21,
        "position": Position.middle,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 22,
        "position": Position.upper,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 23,
        "position": Position.sideLower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 24,
        "position": Position.sideUpper,
        "isFocussed": false,
        "status": Status.available
      },
    ]
  },
  {
    "compartment": 4,
    "seats": [
      {
        "seatNo": 25,
        "position": Position.lower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 26,
        "position": Position.middle,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 27,
        "position": Position.upper,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 28,
        "position": Position.lower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 29,
        "position": Position.middle,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 30,
        "position": Position.upper,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 31,
        "position": Position.sideLower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 32,
        "position": Position.sideUpper,
        "isFocussed": false,
        "status": Status.available
      },
    ]
  },
  {
    "compartment": 5,
    "seats": [
      {
        "seatNo": 33,
        "position": Position.lower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 34,
        "position": Position.middle,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 35,
        "position": Position.upper,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 36,
        "position": Position.lower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 37,
        "position": Position.middle,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 38,
        "position": Position.upper,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 39,
        "position": Position.sideLower,
        "isFocussed": false,
        "status": Status.available
      },
      {
        "seatNo": 40,
        "position": Position.sideUpper,
        "isFocussed": false,
        "status": Status.available
      },
    ]
  },
];
