<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
        <script src="https://cdn.tailwindcss.com"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"> </script>
        <title>RENTBIK</title>
    </head>
    <style>
        body{
            font-family: "Montserrat", sans-serif;
        }
    </style>
    <body class="bg-[#f6f6f6]">
        <!--navbar-->
        <div class="bg-white w-full h-auto border flex flex-row p-4 pl-10 items-center justify-between ">
            <img src="../asset/logo.png" alt="alt" class="size-1/6"/>
            <div class="flex flex-row w-3/5 items-center justify-between">
                <ul class="flex flex-row items-center justify-between w-5/6 h-full">
                    <li>
                        <a href="../customer/customer.jsp" class="font-medium p-4 cursor-pointer hover:bg-blue hover:text-white transition rounded-lg">Khách hàng</a>
                    </li>
                    <li>
                        <a href="../garage/garage.jsp" class="font-medium p-4 cursor-pointer hover:bg-blue hover:text-white transition rounded-lg">Quản lý xe</a>
                    </li> 
                    <li>
                        <a href="../repair/repair.jsp" class="font-medium p-4 cursor-pointer hover:bg-blue hover:text-white transition rounded-lg">Bảo trì xe</a>
                    </li>
                    <li>
                        <a href="rent.jsp" class="font-medium p-4 cursor-pointer   bg-blue text-white  transition rounded-lg">Thuê trả</a>
                    </li>
                    <li>
                        <a href="../report/report-revenue.jsp" class="font-medium p-4 cursor-pointer hover:bg-blue hover:text-white transition rounded-lg">Báo cáo</a>
                    </li>
                </ul>
                <i class="fa-solid fa-user text-2xl p-2 px-3 border rounded-full hover:bg-blue hover:text-white transition cursor-pointer"></i>
            </div>
        </div>
        <!--        garage button-->
        <div class="flex flex-col w-full h-auto items-center justify-start pt-5">
            <div class="w-11/12">
                <ul class="flex flex-row items-center justify-between w-1/2 gap-2 py-4 px-2 bg-blue rounded-lg">
                    <li>
                        <a href="rent.jsp" class="font-medium p-3 cursor-pointer  text-white  hover:bg-white hover:text-blue  transition rounded-lg">
                            Cho thuê xe
                        </a>
                    </li>
                    <li>
                        <a href="return.jsp" class="font-medium p-3 cursor-pointer  bg-white text-blue  transition rounded-lg">
                            Nhận trả xe
                        </a>
                    </li> 
                    <li>
                        <a href="renting-list.jsp" class="font-medium p-3 cursor-pointer text-white hover:bg-white hover:text-blue   transition rounded-lg">
                            Danh sách phiếu thuê/trả
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!--search -->
        <div class="flex flex-col w-full h-auto items-center justify-start pt-5 ">
            <div class="w-11/12">
                <p class="text-xl font-medium">TÌM KHÁCH HÀNG</p>
                <div class="pt-5 flex flex-row gap-10">
                    <div class="w-1/3">
                        <p class="text-base font-medium">SỐ CCCD</p>
                        <div class="flex flex-row items-center mt-1 w-full gap-4">
                            <input 
                                id="cccd"
                                type="text"
                                placeholder="CCCD"
                                class="w-full h-12 text-base bg-[#F4EBD9] text-black rounded-lg outline-none placeholder-black indent-3  "
                                />
                            <button
                                id="btnGetByCCCD"
                                class="flex flex-row items-center w-auto h-12 p-3 px-4 cursor-pointer bg-blue text-white rounded-lg">
                                <i class="fa-solid fa-arrow-right"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--        customer infomation-->
        <div class="mb-5 flex flex-col w-full h-auto items-center justify-start pt-5 hidden" id="customerInfo">
            <div class="w-11/12 flex flex-row justify-between p-5 border rounded-lg bg-[#F4EBD9] border-black">
                <p>Họ tên: <b id="nameCustomer"></b></p>
                <p>Ngày sinh: <b id="birthdayCustomer"></b></p>
                <p>Số điện thoại: <b id="phoneCustomer"></b></p>
                <p>GPLX: <b id="gplxCustomer"></b></p>
            </div>
            <!--            car renting-->
            <div class="flex flex-col w-full h-auto items-center justify-start pt-10">
                <div class="w-11/12 ">
                    <p class="text-xl font-medium text-center">XE ĐANG THUÊ</p>
                    <div class="relative w-full pt-5 overflow-x-auto flex flex-col items-center justify-center">
                        <table class="w-full text-left rounded-t-lg overflow-hidden font-light ">
                            <thead class="text-base text-white bg-blue h-14 ">
                                <tr>
                                    <th scope="col" class="px-6  py-3">
                                        STT
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Biển số xe
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        <div class="flex items-center">
                                            Loại xe
                                        </div>
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        <div class="flex items-center">
                                            Dòng xe
                                        </div>
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        <div class="flex items-center">
                                            Giá tiền thuê
                                        </div>
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        <div class="flex items-center">
                                            Ngày mượn
                                        </div>
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        <div class="flex items-center">
                                            Ngày trả
                                        </div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody class="bg-white" id="tableHiringCar">
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
<!--        return car-->
        <div class="flex flex-col w-full h-auto items-center justify-start pt-5">
            <div class="w-11/12 ">
                <p class="text-xl font-medium">THÊM PHIẾU TRẢ XE</p>
                <div class="bg-[#F4EBD9] p-5 mt-5 rounded-lg">
                    <div class=" flex flex-row gap-10">
                        <div class="w-1/5">
                            <p class="text-base font-medium">Biển số xe</p>
                            <input 
                                id="bienSoXe"
                                type="text"
                                class="mt-1 w-full h-12 text-base  text-black rounded-lg outline-none placeholder-black px-3"
                                />
                        </div>
                        <div class="w-1/5">
                            <p class="text-base font-medium">Ngày trả</p>
                            <input 
                                id='ngayTra'
                                type="date"
                                class="mt-1 w-full h-12 text-base  text-black rounded-lg outline-none placeholder-black px-3"
                                />
                        </div>
                        <div class="w-1/5">
                            <p class="text-base font-medium">Tiền thuê</p>
                            <input 
                                id='tienThue'
                                type="text"
                                disabled
                                class="mt-1 w-full h-12 bg-white text-base  text-black rounded-lg outline-none placeholder-black px-3"
                                />
                        </div>
                        <div class="w-1/5">
                            <p class="text-base font-medium">Tiền phạt quá hạn</p>
                            <input 
                                id='tienPhat'
                                type="text"
                                disabled
                                class="mt-1 w-full h-12 text-base bg-white   text-black rounded-lg outline-none placeholder-black px-3"
                                />
                        </div>
                        <div class="w-1/5">
                            <p class="text-base font-medium">Tổng tiền</p>
                            <input 
                                id='tongTien'
                                type="text"
                                disabled
                                class="mt-1 w-full h-12 text-base bg-white  text-black rounded-lg outline-none placeholder-black px-3"
                                />
                        </div>
                    </div>
                    <div class="w-full mt-5">
                            <p class="text-base font-medium">Ghi chú</p>
                            <input 
                                id='ghiChu'
                                type="text"
                                class="mt-1 w-full h-12 text-base  text-black rounded-lg outline-none placeholder-black px-3"
                                />
                        </div>
                        <div class="w-full mt-5 flex justify-center">
                            <button id="saveReturnCard" class="h-12 w-1/6 cursor-pointer bg-blue text-white  rounded-lg">
                                <p class="font-medium text-xl">Lưu phiếu</p>
                            </button>
                        </div>
                </div>
            </div>
        </div>
        </div>
        
    </body>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        blue: '#354167',
                        lightblue: '#058ed9',
                        bone: 'f4ebd9',
                        red: 'a4243b',
                        orange: 'bd632f'
                    }
                }
            }
        }
        ;

    </script>
    <script src="../js/return_v8.js"></script>
</html>
