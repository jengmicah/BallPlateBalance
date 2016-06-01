package Solver
  model Platform
    inner Modelica.Mechanics.MultiBody.World world(animateGravity = true, g = 0) annotation(Placement(visible = true, transformation(origin = {-127.284, 87.087}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.Fixed fixed annotation(Placement(visible = true, transformation(origin = {-136.987, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(useAxisFlange = true, n = {1, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-60, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position annotation(Placement(visible = true, transformation(origin = {-75, 12.018}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Sine sine annotation(Placement(visible = true, transformation(origin = {-105, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Sine sine1(freqHz = .5) annotation(Placement(visible = true, transformation(origin = {-5, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position position1 annotation(Placement(visible = true, transformation(origin = {25, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {-1, -.9, 0}) annotation(Placement(visible = true, transformation(origin = {50, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute(n = {1, 0, 0}, useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {90, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox2(length = 2, width = 2, height = .1) annotation(Placement(visible = true, transformation(origin = {-15, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(r = {0, 0, 0}, angle = 90, rotationType = Modelica.Mechanics.MultiBody.Types.RotationTypes.RotationAxis, n = {0, 0, 1}) annotation(Placement(visible = true, transformation(origin = {20, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox3(length = 2, width = 2, height = .1, color = {255, 0, 0}) annotation(Placement(visible = true, transformation(origin = {127.992, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(revolute.frame_b, bodyBox3.frame_a) annotation(Line(visible = true, origin = {108.996, -35}, points = {{-8.996, 0}, {8.996, 0}}));
    connect(bodyBox2.frame_b, fixedRotation.frame_a) annotation(Line(visible = true, origin = {2.5, -35}, points = {{-7.5, 0}, {7.5, 0}}));
    connect(revolute1.frame_b, bodyBox2.frame_a) annotation(Line(visible = true, origin = {-32.862, -32.5}, points = {{-17.138, 2.5}, {4.637, 2.5}, {4.637, -2.5}, {7.862, -2.5}}));
    connect(fixedRotation.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {35, -35}, points = {{-5, 0}, {5, 0}}));
    connect(position1.flange, revolute.axis) annotation(Line(visible = true, origin = {71.667, -11.667}, points = {{-36.667, 6.667}, {18.333, 6.667}, {18.333, -13.333}}));
    connect(position.flange, revolute1.axis) annotation(Line(visible = true, origin = {-61.667, 1.345}, points = {{-3.333, 10.673}, {1.667, 10.673}, {1.667, -21.345}}));
    connect(sine.y, position.phi_ref) annotation(Line(visible = true, origin = {-90.25, 36.009}, points = {{-3.75, 23.991}, {0.25, 23.991}, {0.25, -23.991}, {3.25, -23.991}}, color = {0, 0, 127}));
    connect(sine1.y, position1.phi_ref) annotation(Line(visible = true, origin = {9.75, 12.5}, points = {{-3.75, 17.5}, {0.25, 17.5}, {0.25, -17.5}, {3.25, -17.5}}, color = {0, 0, 127}));
    connect(fixedTranslation.frame_b, revolute.frame_a) annotation(Line(visible = true, origin = {70, -35}, points = {{-10, 0}, {10, 0}}));
    connect(fixed.frame_b, revolute1.frame_a) annotation(Line(visible = true, origin = {-98.494, -30}, points = {{-28.494, 0}, {28.494, -0}}));
    annotation(experiment(__Wolfram_SynchronizeWithRealTime = false), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end Platform;

<<<<<<< HEAD
  model hardware
    Modelica.Blocks.Nonlinear.Limiter limiter(uMin = 0.3, uMax = 0.7) annotation(Placement(visible = true, transformation(origin = {-40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput servo_angle_input annotation(Placement(visible = true, transformation(origin = {-170, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    ModelPlug.Pins.Servo servo(Pin = 9) annotation(Placement(visible = true, transformation(origin = {-2.175, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput rightSensorValueInMeter annotation(Placement(visible = true, transformation(origin = {170, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add(k2 = +1) annotation(Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-120, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Continuous.Filter inputFilter(f_cut = 10, order = 1) annotation(Placement(visible = true, transformation(origin = {-120, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Sqrt sqrt1 annotation(Placement(visible = true, transformation(origin = {60, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Continuous.Filter outputFilter(f_cut = 3, order = 1) annotation(Placement(visible = true, transformation(origin = {140, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add1(k2 = -1) annotation(Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = 0) annotation(Placement(visible = true, transformation(origin = {60, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    ModelPlug.Boards.CustomFirmata arduino(Port = "COM5", UpdatePeriod = 0.001, BaudRate = 57600) annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-15, -41.624}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, -73.139}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  equation
    connect(u, sqrt1.u) annotation(Line(visible = true, origin = {30.75, -40.812}, points = {{-45.75, -0.812}, {14.25, -0.812}, {14.25, 0.812}, {17.25, 0.812}}, color = {0, 0, 127}));
    connect(const.y, add.u2) annotation(Line(visible = true, origin = {-97.75, -23}, points = {{-11.25, -17}, {2.75, -17}, {2.75, 17}, {5.75, 17}}, color = {0, 0, 127}));
    connect(outputFilter.y, rightSensorValueInMeter) annotation(Line(visible = true, origin = {160.5, 0}, points = {{-9.5, 0}, {9.5, 0}}, color = {0, 0, 127}));
    connect(add1.y, outputFilter.u) annotation(Line(visible = true, origin = {119.5, 0}, points = {{-8.5, 0}, {8.5, 0}}, color = {0, 0, 127}));
    connect(limiter.y, servo.u) annotation(Line(visible = true, origin = {-19.75, 10}, points = {{-9.25, -10}, {-0.25, -10}, {-0.25, 30}, {7.575, 30}}, color = {0, 0, 127}));
    connect(add.y, limiter.u) annotation(Line(visible = true, origin = {-60.5, 0}, points = {{-8.5, 0}, {8.5, 0}}, color = {0, 0, 127}));
    connect(inputFilter.y, add.u1) annotation(Line(visible = true, origin = {-97.75, 23}, points = {{-11.25, 17}, {2.75, 17}, {2.75, -17}, {5.75, -17}}, color = {0, 0, 127}));
    connect(inputFilter.u, servo_angle_input) annotation(Line(visible = true, origin = {-145.5, 20}, points = {{13.5, 20}, {5.5, 20}, {5.5, -20}, {-24.5, -20}}, color = {0, 0, 127}));
    connect(const1.y, add1.u1) annotation(Line(visible = true, origin = {79.75, 23}, points = {{-8.75, 17}, {0.25, 17}, {0.25, -17}, {8.25, -17}}, color = {0, 0, 127}));
    connect(sqrt1.y, add1.u2) annotation(Line(visible = true, origin = {79.75, -23}, points = {{-8.75, -17}, {0.25, -17}, {0.25, 17}, {8.25, 17}}, color = {0, 0, 127}));
    connect(servo.pinConnector, arduino.boardConnector) annotation(Line(visible = true, origin = {9.565, 24}, points = {{-1.74, 16}, {10.435, 16}, {10.435, -4}, {-9.565, -4}, {-9.565, -24}}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, fillColor = {0, 0, 255}, extent = {{-63.13, -63.973}, {63.13, 63.973}}), Text(visible = true, origin = {-3.644, 3.095}, extent = {{-53.644, -25}, {53.644, 25}}, textString = "Hardware")}), Diagram(coordinateSystem(extent = {{-191.637, -105}, {220, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end hardware;

=======
>>>>>>> 544291dffb083e2a6c8387921402882c3c168912
  model BallBalance
    Modelica.Blocks.Continuous.Der der2 annotation(Placement(visible = true, transformation(origin = {25, 54.061}, extent = {{-10, -10}, {10, 10}}, rotation = -360)));
    Modelica.Blocks.Math.Gain p1(k = 0.352277) annotation(Placement(visible = true, transformation(origin = {65, 94.13}, extent = {{-10, -10}, {10, 10}}, rotation = -360)));
    Modelica.Blocks.Math.Gain d1(k = 0.295788) annotation(Placement(visible = true, transformation(origin = {107.502, 54.072}, extent = {{-10, -10}, {10, 10}}, rotation = -360)));
    Modelica.Blocks.Math.Add add1 annotation(Placement(visible = true, transformation(origin = {145, 74.13}, extent = {{-10, -10}, {10, 10}}, rotation = -360)));
    Modelica.Blocks.Continuous.Filter filter2(f_cut = 10) annotation(Placement(visible = true, transformation(origin = {62.502, 54.13}, extent = {{-10, -10}, {10, 10}}, rotation = -360)));
    Modelica.Blocks.Math.Feedback feedback1 annotation(Placement(visible = true, transformation(origin = {45, -5.87}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
<<<<<<< HEAD
    Modelica.Blocks.Sources.Pulse pulse1(offset = -0.05, amplitude = 0.07, startTime = 5, width = 50, period = 10, nperiod = -1) annotation(Placement(visible = true, transformation(origin = {5, -5.87}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    hardware hardware2 annotation(Placement(visible = true, transformation(origin = {110, 16.565}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput Y annotation(Placement(visible = true, transformation(origin = {85, -75}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-89.643, 15.81}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  equation
    connect(Y, hardware2.u) annotation(Line(visible = true, origin = {90, -18.833}, points = {{-5, -56.167}, {-5, 28.084}, {10, 28.084}}, color = {0, 0, 127}));
    connect(hardware2.rightSensorValueInMeter, feedback1.u2) annotation(Line(visible = true, origin = {91.2, -3.696}, points = {{28.8, 20.261}, {31.8, 20.261}, {31.8, -15.174}, {-46.2, -15.174}, {-46.2, -10.174}}, color = {0, 0, 127}));
    connect(add1.y, hardware2.servo_angle_input) annotation(Line(visible = true, origin = {128, 50.604}, points = {{28, 23.526}, {31, 23.526}, {31, 10.513}, {-31, 10.513}, {-31, -34.039}, {-28, -34.039}}, color = {0, 0, 127}));
=======
    Modelica.Blocks.Sources.Pulse pulse1(offset = -0.05, amplitude = 0.07, startTime = 5, width = 50, period = 10, nperiod = -1) annotation(Placement(visible = true, transformation(origin = {15, -6.52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput X annotation(Placement(visible = true, transformation(origin = {-75, -75}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-97.643, 23.81}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput Y annotation(Placement(visible = true, transformation(origin = {57.066, -80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-89.643, 15.81}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    NewHardware newHardware annotation(Placement(visible = true, transformation(origin = {-22.471, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(newHardware.rightSensorValueInMeter1, feedback1.u2) annotation(Line(visible = true, origin = {11.718, -11.235}, points = {{-24.188, 8.953}, {-21.188, 8.953}, {-21.188, -7.635}, {33.282, -7.635}, {33.282, -2.635}}, color = {0, 0, 127}));
    connect(Y, newHardware.u1) annotation(Line(visible = true, origin = {-11.379, -41.399}, points = {{68.446, -38.601}, {-24.091, -38.601}, {-24.091, 38.601}, {-20.263, 38.601}}, color = {0, 0, 127}));
    connect(add1.y, newHardware.servo_angle_input1) annotation(Line(visible = true, origin = {61.874, 48.014}, points = {{94.126, 26.116}, {97.126, 26.116}, {97.126, 13.104}, {-97.345, 13.104}, {-97.345, -39.22}, {-93.689, -39.22}}, color = {0, 0, 127}));
    connect(X, newHardware.u) annotation(Line(visible = true, origin = {-60.559, -23.966}, points = {{-14.441, -51.034}, {-14.441, 25.517}, {28.882, 25.517}}, color = {0, 0, 127}));
    connect(newHardware.rightSensorValueInMeter, feedback.u2) annotation(Line(visible = true, origin = {-54.282, -3.522}, points = {{41.812, 14.522}, {44.812, 14.522}, {44.812, -11.348}, {-65.718, -11.348}, {-65.718, -6.348}}, color = {0, 0, 127}));
    connect(add.y, newHardware.servo_angle_input) annotation(Line(visible = true, origin = {-20.62, 52.083}, points = {{11.62, 26.047}, {14.62, 26.047}, {14.62, 13.035}, {-14.85, 13.035}, {-14.85, -39.083}, {-11.161, -39.083}}, color = {0, 0, 127}));
>>>>>>> 544291dffb083e2a6c8387921402882c3c168912
    connect(filter2.y, d1.u) annotation(Line(visible = true, origin = {88.502, 54.101}, points = {{-15, 0.029}, {4, 0.029}, {4, -0.029}, {7, -0.029}}, color = {0, 0, 127}));
    connect(der2.y, filter2.u) annotation(Line(visible = true, origin = {45.377, 54.096}, points = {{-9.377, -0.035}, {2.126, -0.034}, {2.126, 0.035}, {5.125, 0.034}}, color = {0, 0, 127}));
    connect(d1.y, add1.u2) annotation(Line(visible = true, origin = {127.876, 61.101}, points = {{-9.374, -7.029}, {2.124, -7.029}, {2.124, 7.029}, {5.124, 7.029}}, color = {0, 0, 127}));
    connect(p1.y, add1.u1) annotation(Line(visible = true, origin = {117.25, 87.13}, points = {{-41.25, 7}, {12.75, 7}, {12.75, -7}, {15.75, -7}}, color = {0, 0, 127}));
    connect(pulse1.y, feedback1.u1) annotation(Line(visible = true, origin = {31.75, -6.195}, points = {{-5.75, -0.325}, {0.25, -0.325}, {0.25, 0.325}, {5.25, 0.325}}, color = {0, 0, 127}));
    connect(feedback1.y, der2.u) annotation(Line(visible = true, origin = {34.5, 27.44}, points = {{19.5, -33.31}, {30.5, -33.31}, {30.5, 6.69}, {-29.5, 6.69}, {-29.5, 26.621}, {-21.5, 26.621}}, color = {0, 0, 127}));
    connect(der2.u, p1.u) annotation(Line(visible = true, origin = {19, 74.096}, points = {{-6, -20.035}, {-14, -20.034}, {-14, 20.034}, {34, 20.034}}, color = {0, 0, 127}));
    annotation(experiment(StopTime = 60.0, Interval = 0.01, __Wolfram_SynchronizeWithRealTime = true), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end BallBalance;

<<<<<<< HEAD
  model hardware1
    Modelica.Blocks.Nonlinear.Limiter limiter(uMin = 0.3, uMax = 0.7) annotation(Placement(visible = true, transformation(origin = {-40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput servo_angle_input annotation(Placement(visible = true, transformation(origin = {-170, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    ModelPlug.Pins.Servo servo(Pin = 10) annotation(Placement(visible = true, transformation(origin = {-2.175, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput rightSensorValueInMeter annotation(Placement(visible = true, transformation(origin = {170, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add(k2 = +1) annotation(Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-120, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Continuous.Filter inputFilter(f_cut = 10, order = 1) annotation(Placement(visible = true, transformation(origin = {-120, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Sqrt sqrt1 annotation(Placement(visible = true, transformation(origin = {60, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Continuous.Filter outputFilter(f_cut = 3, order = 1) annotation(Placement(visible = true, transformation(origin = {140, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add1(k2 = -1) annotation(Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = 0) annotation(Placement(visible = true, transformation(origin = {60, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    ModelPlug.Boards.CustomFirmata arduino(Port = "COM5", UpdatePeriod = 0.001, BaudRate = 57600) annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-15, -41.624}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, -73.139}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
=======
  model NewHardware
    Modelica.Blocks.Nonlinear.Limiter limiter(uMin = 0.3, uMax = 0.7) annotation(Placement(visible = true, transformation(origin = {-30, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput servo_angle_input annotation(Placement(visible = true, transformation(origin = {-160, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-93.106, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    ModelPlug.Pins.Servo servo(Pin = 9) annotation(Placement(visible = true, transformation(origin = {2.371, -0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput rightSensorValueInMeter annotation(Placement(visible = true, transformation(origin = {180, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add(k2 = +1) annotation(Placement(visible = true, transformation(origin = {-70, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-110, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Continuous.Filter inputFilter(f_cut = 10, order = 1) annotation(Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Sqrt sqrt1 annotation(Placement(visible = true, transformation(origin = {70, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Continuous.Filter outputFilter(f_cut = 3, order = 1) annotation(Placement(visible = true, transformation(origin = {150, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add1(k2 = -1) annotation(Placement(visible = true, transformation(origin = {110, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const1(k = 0) annotation(Placement(visible = true, transformation(origin = {70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    ModelPlug.Boards.CustomFirmata arduino(Port = "COM4", UpdatePeriod = 0.001, BaudRate = 57600) annotation(Placement(visible = true, transformation(origin = {10, 53.47}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-5, -81.624}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-92.062, -34.487}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Nonlinear.Limiter limiter1(uMin = 0.3, uMax = 0.7) annotation(Placement(visible = true, transformation(origin = {-37.339, 66.624}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput servo_angle_input1 annotation(Placement(visible = true, transformation(origin = {-167.339, 66.624}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-93.443, 37.938}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    ModelPlug.Pins.Servo servo1(Pin = 10) annotation(Placement(visible = true, transformation(origin = {2.006, 106.996}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput rightSensorValueInMeter1 annotation(Placement(visible = true, transformation(origin = {172.661, 66.624}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -72.818}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add2(k2 = +1) annotation(Placement(visible = true, transformation(origin = {-77.339, 66.624}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const2(k = 0) annotation(Placement(visible = true, transformation(origin = {-117.339, 26.624}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Continuous.Filter inputFilter1(f_cut = 10, order = 1) annotation(Placement(visible = true, transformation(origin = {-117.339, 106.624}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Sqrt sqrt2 annotation(Placement(visible = true, transformation(origin = {62.661, 26.624}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Continuous.Filter outputFilter1(f_cut = 3, order = 1) annotation(Placement(visible = true, transformation(origin = {142.661, 66.624}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add3(k2 = -1) annotation(Placement(visible = true, transformation(origin = {102.661, 66.624}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const3(k = 0) annotation(Placement(visible = true, transformation(origin = {62.661, 106.624}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {-12.339, 25}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-91.717, -77.971}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
>>>>>>> 544291dffb083e2a6c8387921402882c3c168912
  equation
    connect(servo.pinConnector, arduino.boardConnector) annotation(Line(visible = true, origin = {12.628, 26.882}, points = {{-0.256, -26.882}, {2.756, -26.882}, {2.756, 13.588}, {-2.628, 13.588}, {-2.628, 26.588}}));
    connect(servo1.pinConnector, arduino.boardConnector) annotation(Line(visible = true, origin = {12.409, 80.081}, points = {{-0.402, 26.915}, {2.61, 26.915}, {2.61, -13.61}, {-2.409, -13.61}, {-2.409, -26.61}}));
    connect(sqrt2.y, add3.u2) annotation(Line(visible = true, origin = {82.411, 43.624}, points = {{-8.75, -17}, {0.25, -17}, {0.25, 17}, {8.25, 17}}, color = {0, 0, 127}));
    connect(const3.y, add3.u1) annotation(Line(visible = true, origin = {82.411, 89.624}, points = {{-8.75, 17}, {0.25, 17}, {0.25, -17}, {8.25, -17}}, color = {0, 0, 127}));
    connect(inputFilter1.u, servo_angle_input1) annotation(Line(visible = true, origin = {-142.839, 86.624}, points = {{13.5, 20}, {5.5, 20}, {5.5, -20}, {-24.5, -20}}, color = {0, 0, 127}));
    connect(inputFilter1.y, add2.u1) annotation(Line(visible = true, origin = {-95.089, 89.624}, points = {{-11.25, 17}, {2.75, 17}, {2.75, -17}, {5.75, -17}}, color = {0, 0, 127}));
    connect(add2.y, limiter1.u) annotation(Line(visible = true, origin = {-57.839, 66.624}, points = {{-8.5, 0}, {8.5, 0}}, color = {0, 0, 127}));
    connect(limiter1.y, servo1.u) annotation(Line(visible = true, origin = {-17.089, 76.624}, points = {{-9.25, -10}, {-0.25, -10}, {-0.25, 30}, {9.095, 30.372}}, color = {0, 0, 127}));
    connect(add3.y, outputFilter1.u) annotation(Line(visible = true, origin = {122.161, 66.624}, points = {{-8.5, 0}, {8.5, 0}}, color = {0, 0, 127}));
    connect(outputFilter1.y, rightSensorValueInMeter1) annotation(Line(visible = true, origin = {163.161, 66.624}, points = {{-9.5, 0}, {9.5, 0}}, color = {0, 0, 127}));
    connect(const2.y, add2.u2) annotation(Line(visible = true, origin = {-95.089, 43.624}, points = {{-11.25, -17}, {2.75, -17}, {2.75, 17}, {5.75, 17}}, color = {0, 0, 127}));
    connect(u1, sqrt2.u) annotation(Line(visible = true, origin = {33.411, 25.812}, points = {{-45.75, -0.812}, {14.25, -0.812}, {14.25, 0.812}, {17.25, 0.812}}, color = {0, 0, 127}));
    connect(u, sqrt1.u) annotation(Line(visible = true, origin = {40.75, -80.812}, points = {{-45.75, -0.812}, {14.25, -0.812}, {14.25, 0.812}, {17.25, 0.812}}, color = {0, 0, 127}));
    connect(const.y, add.u2) annotation(Line(visible = true, origin = {-87.75, -63}, points = {{-11.25, -17}, {2.75, -17}, {2.75, 17}, {5.75, 17}}, color = {0, 0, 127}));
    connect(outputFilter.y, rightSensorValueInMeter) annotation(Line(visible = true, origin = {170.5, -40}, points = {{-9.5, 0}, {9.5, 0}}, color = {0, 0, 127}));
    connect(add1.y, outputFilter.u) annotation(Line(visible = true, origin = {129.5, -40}, points = {{-8.5, 0}, {8.5, 0}}, color = {0, 0, 127}));
    connect(limiter.y, servo.u) annotation(Line(visible = true, origin = {-9.75, -30}, points = {{-9.25, -10}, {-0.25, -10}, {-0.25, 30}, {2.121, 30}}, color = {0, 0, 127}));
    connect(add.y, limiter.u) annotation(Line(visible = true, origin = {-50.5, -40}, points = {{-8.5, 0}, {8.5, 0}}, color = {0, 0, 127}));
    connect(inputFilter.y, add.u1) annotation(Line(visible = true, origin = {-87.75, -17}, points = {{-11.25, 17}, {2.75, 17}, {2.75, -17}, {5.75, -17}}, color = {0, 0, 127}));
    connect(inputFilter.u, servo_angle_input) annotation(Line(visible = true, origin = {-135.5, -20}, points = {{13.5, 20}, {5.5, 20}, {5.5, -20}, {-24.5, -20}}, color = {0, 0, 127}));
    connect(const1.y, add1.u1) annotation(Line(visible = true, origin = {89.75, -17}, points = {{-8.75, 17}, {0.25, 17}, {0.25, -17}, {8.25, -17}}, color = {0, 0, 127}));
    connect(sqrt1.y, add1.u2) annotation(Line(visible = true, origin = {89.75, -63}, points = {{-8.75, -17}, {0.25, -17}, {0.25, 17}, {8.25, 17}}, color = {0, 0, 127}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, fillColor = {0, 0, 255}, extent = {{-63.13, -63.973}, {63.13, 63.973}}), Text(visible = true, origin = {-3.644, 3.095}, extent = {{-53.644, -25}, {53.644, 25}}, textString = "Hardware")}), Diagram(coordinateSystem(extent = {{-191.637, -105}, {220, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end NewHardware;
  annotation(experiment(__Wolfram_SynchronizeWithRealTime = false), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end Solver;
