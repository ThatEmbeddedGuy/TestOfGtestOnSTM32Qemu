#include "gtest/gtest.h"
#include "Gpio.h"

TEST( testLed, tooglingGpio_GpiosetsUP ) {
	Gpio led2(Port::A,7);
	GPIOA->BSRR=1<<(7+16); //set pin down manually
	EXPECT_EQ(led2.getState(),false);
	led2.init(GpioMode::Out,GpioOutType::PP,GpioSpeed::s100MHz,GpioPuPd::PullDown);
	led2.toggle();
	EXPECT_EQ(static_cast<bool>(GPIOA->ODR&1<<7),true);
}

TEST( testLed, tooglingGpioFormUp_LedToogles ) {
	Gpio led2(Port::A,7);  //set pin up manually
	GPIOA->BSRR=1<<7;
	EXPECT_EQ(led2.getState(),true);
	led2.init(GpioMode::Out,GpioOutType::PP,GpioSpeed::s100MHz,GpioPuPd::PullDown);
	led2.toggle();
	EXPECT_EQ(static_cast<bool>(GPIOA->ODR&1<<7),false);
}
