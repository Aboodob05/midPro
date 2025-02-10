import 'package:flutter/material.dart';
import 'FindDonors.dart';
import 'dart:collection';
import'data.dart';
import'FindDonors.dart';



bool isMatchingBloodType(String donorBloodType) {

  switch (blood!) {
    case "O-":
      return donorBloodType == "O-";
    case "O+":
      return donorBloodType == "O-" || donorBloodType == "O+";
    case "B-":
      return donorBloodType == "O-" || donorBloodType == "B-";
    case "B+":
      return donorBloodType == "O-" || donorBloodType == "O+" || donorBloodType == "B-" || donorBloodType == "B+";
    case "A-":
      return donorBloodType == "O-" || donorBloodType == "A-";
    case "A+":
      return donorBloodType == "O-" || donorBloodType == "A+" || donorBloodType == "A-" || donorBloodType == "O+";
    case "AB-":
      return donorBloodType == "O-" || donorBloodType == "A-" || donorBloodType == "B-" || donorBloodType == "AB-";
    case "AB+":
      return true;
    default:
      return false;
  }
}

void findDonors(int locat) {
  for (List i in data[locat]!) {
    if (isMatchingBloodType(i[1])) {
      donors?.add(i);

    }
  }
}

void bfs(int? v) {

  List<bool> visited = List.filled(10, false);

  Queue<int> queue = Queue();

  queue.add(v!);
  visited[v!] = true;

  while (queue.isNotEmpty) {

    int location = queue.removeFirst();

    findDonors(location);

    for (int neighbor in graph[location]!) {
      if (!visited[neighbor]) {
        visited[neighbor] = true;
        queue.add(neighbor);
      }
    }
  }


}





