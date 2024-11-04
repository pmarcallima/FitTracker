
class Statistic {
  final DateTime? lastWorkout;
  final int totalWorkouts;
  final int currentStreak;
  final int biggestStreak;
  final int totalFriends;
  final int userId;

  Statistic({
    this.lastWorkout,
    required this.totalWorkouts,
    required this.currentStreak,
    required this.biggestStreak,
    required this.totalFriends,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return {
      'lastWorkout': lastWorkout?.toIso8601String(),
      'totalWorkouts': totalWorkouts,
      'currentStreak': currentStreak,
      'biggestStreak': biggestStreak,
      'totalFriends': totalFriends,
      'userId': userId,
    };
  }
 factory Statistic.fromMap(Map<String, dynamic> map) {
    return Statistic(
      lastWorkout: DateTime.parse(map['lastWorkout']),
      totalWorkouts: map['totalWorkouts'],
      currentStreak: map['currentStreak'],
      biggestStreak: map['biggestStreak'],
      totalFriends: map['totalFriends'],
      userId: map['userId'],
    );
  }
}
