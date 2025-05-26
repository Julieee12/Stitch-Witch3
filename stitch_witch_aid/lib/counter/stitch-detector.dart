class StitchDetector {
  // Fictional intervals - replace these with your actual analysis results
  static const int X_MIN = 7000;
  static const int X_MAX = 11500;
  static const int Y_MIN = 7000;
  static const int Y_MAX = 15000;
  static const int Z_MIN = 3000;
  static const int Z_MAX = 9500;

  // Prevent double counting
  static const int MIN_SAMPLES_BETWEEN_STITCHES = 200;
  int _samplesSinceLastStitch = 0;

  bool processAccelerometerData(int ax, int ay, int az) {
    _samplesSinceLastStitch++;

    // Check if all three axes are within their respective intervals
    bool xInRange = ax >= X_MIN && ax <= X_MAX;
    bool yInRange = ay >= Y_MIN && ay <= Y_MAX;
    bool zInRange = az >= Z_MIN && az <= Z_MAX;

    bool stitchDetected = xInRange &&
        yInRange &&
        zInRange &&
        _samplesSinceLastStitch >= MIN_SAMPLES_BETWEEN_STITCHES;

    if (stitchDetected) {
      _samplesSinceLastStitch = 0;
      print("🧶 Stitch detected! X:$ax, Y:$ay, Z:$az");
      return true;
    }

    return false;
  }

}