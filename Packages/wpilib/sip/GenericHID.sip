// This file is part of the RobotPy wpilib package.
//
// Copyright (c) 2010 Peter Johnson
// 
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.
//

class GenericHID
{
%TypeHeaderCode
#include <WPILib/GenericHID.h>
%End

public:
	enum JoystickHand {
		kLeftHand = 0,
		kRightHand = 1
	};

	virtual ~GenericHID();

	virtual float GetX(JoystickHand hand = kRightHand) = 0;
	virtual float GetY(JoystickHand hand = kRightHand) = 0;
	virtual float GetZ() = 0;
	virtual float GetTwist() = 0;
	virtual float GetThrottle() = 0;
	virtual float GetRawAxis(UINT32 axis) = 0;

	virtual bool GetTrigger(JoystickHand hand = kRightHand) = 0;
	virtual bool GetTop(JoystickHand hand = kRightHand) = 0;
	virtual bool GetBumper(JoystickHand hand = kRightHand) = 0;
	virtual bool GetRawButton(UINT32 button) = 0;
};
