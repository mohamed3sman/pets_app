import 'package:equatable/equatable.dart';

class Weight extends Equatable {
  final String imperial;
  final String metric;

  const Weight({
    required this.imperial,
    required this.metric,
  });

  @override
  List<Object?> get props => [imperial, metric];

  factory Weight.fromJson(Map<String, dynamic> json) {
    return Weight(
      imperial: json['imperial'] as String,
      metric: json['metric'] as String,
    );
  }
}
