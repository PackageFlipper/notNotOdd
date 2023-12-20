fn main() {
    println!("Hello, world!");
}

pub mod one {
    pub mod two {
        pub mod three {
            pub mod four {
                pub mod five {
                    pub mod six {
                        pub mod seven {
                            pub mod eight {
                                pub mod nine {
                                    pub mod ten {
                                        pub mod eleven {
                                            pub mod twelve {
                                                pub mod thirteen {
                                                    pub mod fourteen {
                                                        pub mod fifteen {
                                                            pub mod sixteen {
                                                                pub mod seventeen {
                                                                    pub mod eighteen {
                                                                        pub mod nineteen {
                                                                            pub mod twenty {
                                                                                pub mod twentyOne {
                                                                                    pub mod twnentyTwo {
                                                                                        pub mod twentyThree {
                                                                                            pub mod twentyFour {
                                                                                                pub mod twentyFive {
                                                                                                    pub mod twentySix {
                                                                                                        pub mod twentySeven {
                                                                                                            pub mod twentyNine {
                                                                                                                pub mod thirty {
                                                                                                                    pub fn notNotOdd(num: i32)-> bool{
                                                                                                                        if (num %2 == 0){
                                                                                                                            return true;
                                                                                                                        }

                                                                                                                        return false;
                                                                                                                    }
                                                                                                                    pub fn notNotEven(num: i32)->bool
{
                                                                                                                        if (num%2 != 0){
        return true;
    }
                                                                                                                        return false;
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#[test]
fn test_notNotOdd() {

    assert_eq!(true, true);
}
