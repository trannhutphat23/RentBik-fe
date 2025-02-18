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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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
                        <a href="../customer/customer.jsp" class="font-medium p-4 cursor-pointer hover:bg-blue hover:text-white transition rounded-lg">
                            Khách hàng</a>
                    </li>
                    <li>
                        <a href="garage.jsp" class="font-medium p-4 cursor-pointer bg-blue text-white  transition rounded-lg">
                            Quản lý xe</a>
                    </li> 
                    <li>
                        <a href="../repair/repair.jsp" class="font-medium p-4 cursor-pointer hover:bg-blue hover:text-white transition rounded-lg">
                            Bảo trì xe</a>
                    </li>
                    <li>
                        <a href="../rent/rent.jsp" class="font-medium p-4 cursor-pointer hover:bg-blue hover:text-white transition rounded-lg">
                            Thuê trả</a>
                    </li>
                    <li>
                        <a href="../report/report-revenue.jsp" class="font-medium p-4 cursor-pointer hover:bg-blue hover:text-white transition rounded-lg">
                            Báo cáo</a>
                    </li>
                </ul>
                <i class="fa-solid fa-user text-2xl p-2 px-3 border rounded-full hover:bg-blue hover:text-white transition cursor-pointer"></i>
            </div>
        </div>
        <!--garage button-->
        <div class="flex flex-col w-full h-auto items-center justify-start pt-5">
            <div class="w-11/12">
                <ul class="flex flex-row items-center justify-between w-2/5 gap-2 py-4 px-2 bg-blue rounded-lg">
                    <li>
                        <a href="garage.jsp" class="font-medium p-3 cursor-pointer bg-white text-blue  transition rounded-lg">
                            Kho xe</a>
                    </li>
                    <li>
                        <a href="insurance-list.jsp" class="font-medium p-3 cursor-pointer text-white hover:bg-white hover:text-blue transition rounded-lg">
                            Danh sách bảo hiểm</a>
                    </li> 
                    <li>
                        <a href="insurance.jsp" class="font-medium p-3 cursor-pointer text-white  hover:bg-white hover:text-blue transition rounded-lg">
                            Bảo hiểm</a>
                    </li>
                </ul>
            </div>
        </div>
        <!--search and button-->
        <div class="flex flex-col items-center w-full h-auto pt-5 gap-4">
                <div class="flex flex-row justify-between w-11/12 h-12 gap-4">
                    <div class="w-11/12 relative flex items-center">
                        <i class="fa-solid fa-magnifying-glass absolute ml-5 text-lg "></i>
                        <input 
                            id="searchInput"
                            type="text"
                            placeholder="Tìm kiếm"
                            class=" w-full h-full pl-14 text-lg bg-[#F4EBD9] text-black rounded-lg outline-none placeholder-black"
                            />
                    </div>
                    <button id="btnSearch" class="w-28 p-3 cursor-pointer bg-blue text-white rounded-lg">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </div>
                <div class="flex flex-row justify-end items-center w-11/12 h-12 gap-4">
                    <button class="flex flex-row items-center w-auto h-12 p-3 px-4 cursor-pointer bg-blue text-white rounded-lg" onclick="showAddCar()">
                        <i class="fa-solid fa-plus mr-2"></i>
                        <p class="font-normal text-base">Thêm xe</p>
                    </button>
                    <button id="hangXe" class="flex flex-row items-center w-auto h-12 p-3 px-4 cursor-pointer bg-blue text-white rounded-lg" onclick="showAddBrand()">
                        <i class="fa-solid fa-plus mr-2"></i>
                        <p class="font-normal text-base">Thêm hãng xe</p>
                    </button>
                    <button id="dongXe" class="flex flex-row items-center w-auto h-12 p-3 px-4 cursor-pointer bg-blue text-white rounded-lg" onclick="showAddSeries()">
                        <i class="fa-solid fa-plus mr-2"></i>
                        <p class="font-normal text-base">Thêm dòng xe</p>
                    </button>
                    <button id="baoHiem" class="flex flex-row items-center w-auto h-12 p-3 px-4 cursor-pointer bg-blue text-white rounded-lg" onclick="showAddInsurance()">
                        <i class="fa-solid fa-plus mr-2"></i>
                        <p class="font-normal text-base">Thêm bảo hiểm</p>
                    </button>
                    <button class="h-12 w-14 cursor-pointer bg-[#e4e4e4] text-[#7c7c7c] text-xl rounded-lg" onclick='showUpdateCar()'>
                        <i class="fa-solid fa-pen-to-square"></i>
                    </button>
                    <button class="h-12 w-14 cursor-pointer  bg-[#e4e4e4] text-[#7c7c7c] text-xl rounded-lg" onclick="showDeleteCar()">
                        <i class="fa-solid fa-trash"></i>
                    </button>
                </div>
            </div>
        <!--table-->
        <div class="relative w-full pt-5 overflow-x-auto flex flex-col items-center justify-center">
                <table class="w-11/12 text-left rounded-t-lg overflow-hidden font-light ">
                    <thead class="text-base text-white bg-blue h-14 ">
                    <tr>
                        <th scope="col" class="px-6  py-3">
                            STT
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Biển số
                        </th>
                        <th scope="col" class="px-6 py-3">
                            <div class="flex items-center">
                                Tình trạng
                            </div>
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
                                Giá thuê
                            </div>
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Ghi chú
                        </th>
                    </tr>
                </thead>
                <tbody id="tableCar">
                    
                </tbody>
            </table>
        </div>
        <div class="absolute w-full h-auto py-20 top-0 flex items-center justify-center hidden overflow-hidden" id="addCar">
            <div class="absolute w-full h-[200vh] bg-gray-400 opacity-75"></div>
            <div class="z-10 w-1/3 h-4/5 h-auto bg-white relative z-10 rounded-lg px-5 py-7 shadow-lg shadow-black">
                <div class="flex flex-row justify-between items-center mb-7">
                    <p class="text-xl font-medium">THÊM XE</p>
                    <i class="fa-solid fa-x text-lg font-black cursor-pointer hover:text-[#ff0000]" onclick="showAddCar()"></i>
                </div>
                <div class="mb-4">
                    <p class="font-medium mb-1">Biển số xe</p>
                    <input 
                        type="text"
                        placeholder="Biển số xe"
                        class="w-full bg-[#e4e4e4] text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2"
                        id="bienSoXe"
                    />
                </div>
                <div class="mb-4">
                    <p class="font-medium mb-1">Loại xe</p>
                    <select id="selectedType" class="border border-gray-300 rounded-lg h-9 text-black w-full cursor-pointer bg-[#e4e4e4]">
                        
                    </select>
                </div>
                <div class="mb-4">
                    <p class="font-medium mb-1">Tên hãng</p>
                    <select id="selectedBrand" class="border border-gray-300 rounded-lg h-9 text-black w-full cursor-pointer bg-[#e4e4e4]">
                        
                    </select>
                </div>
                <div class="mb-4">
                    <p class="font-medium mb-1">Dòng xe</p>
                    <select id="selectedSeries" class="border border-gray-300 rounded-lg h-9 text-black w-full cursor-pointer bg-[#e4e4e4]">
                        
                    </select>
                </div>
                
                <div class="mb-4">
                    <p class="font-medium mb-1">Giá mua</p>
                    <input 
                        type="text"
                        class="w-full bg-[#e4e4e4] text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2"
                        id="giaMua"
                    />
                </div>
                <div class="mb-4">
                    <p class="font-medium mb-1">Ngày mua</p>
                    <input 
                        type="date"
                        placeholder="Ngày sinh"
                        class="w-full bg-[#e4e4e4] text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2 pr-2"
                        id="ngayMua"
                    />
                </div>
                <div class="mb-4 flex">
                    <div class="mr-2">
                        <p class="font-medium mb-1">Mã bảo hiểm (nếu có)</p>
                        <select id="selectedInsurance" class="border border-gray-300 rounded-lg h-9 text-black w-full cursor-pointer bg-[#e4e4e4]">
                        
                        </select>
                    </div>
                    <div class="w-[50%]">
                        <p class="font-medium mb-1">Ngày hết hạn</p>
                        <input 
                            type="date"
                            disabled
                            class="w-full bg-[#e4e4e4] text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2"
                            id="ngayHetHan"
                        />
                    </div>
                </div>
                <div class="mb-7">
                    <p class="font-medium mb-1">Ghi chú</p>
                    <input 
                        type="text"
                        class="w-full bg-[#e4e4e4] text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2"
                        id="ghiChu"
                    />
                </div>
                <div class="w-full flex justify-center items-center h-10">
                    <button onclick="addCar()" class="w-1/3 h-full px-4 cursor-pointer bg-blue text-white rounded-lg">
                        <p class="text-lg font-medium">Thêm</p>
                    </button>
                </div>
            </div>
        </div>
        
        <div class="w-full h-screen absolute top-0  flex items-center justify-center hidden" id="addBrand">
            <div class="absolute w-full h-[100vh] bg-gray-400 opacity-75"></div>
            <div class="z-10 w-1/3 h-4/5 h-auto bg-white relative z-10 rounded-lg px-5 py-7 shadow-lg shadow-black">
                <div class="flex flex-row justify-between items-center mb-7">
                    <p class="text-xl font-medium">TÊN HÃNG</p>
                    <i class="fa-solid fa-x text-lg font-black cursor-pointer hover:text-[#ff0000]" onclick="showAddBrand()"></i>
                </div>
                <div class="mb-4 flex justify-center items-center">
                    <i id="iconThemTenHang" class="fa-solid fa-plus mr-2 text-lg text-gray-400 cursor-pointer hover:text-[#ff0000]"></i>
                    <input 
                        type="text"
                        placeholder="Thêm tên hãng"
                        class="w-full text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2"
                        id="themTenHang"
                    />
                </div> 
                <div class="mb-4 flex justify-center items-center">
                    <i id="iconTimTenHang" class="fa-solid fa-search mr-2 text-lg text-gray-400 cursor-pointer hover:text-[#ff0000]"></i>
                    <input 
                        type="text"
                        placeholder="Tìm tên hãng"
                        class="w-full text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2"
                        id="timTenHang"
                    />
                </div>
                <div id="listBrand">
                </div>
            </div>
        </div>
        
        <div class="w-full h-screen absolute top-0 flex items-center justify-center hidden" id="addSeries">
            <div class="absolute w-full h-[100vh] bg-gray-400 opacity-75"></div>
            <div class="z-10 w-1/3 h-4/5 h-auto bg-white relative z-10 rounded-lg px-5 py-7 shadow-lg shadow-black">
                <div class="flex flex-row justify-between items-center mb-7">
                    <p class="text-xl font-medium">DÒNG XE</p>
                    <i class="fa-solid fa-x text-lg font-black cursor-pointer hover:text-[#ff0000]" onclick="showAddSeries()"></i>
                </div>
                <div class="mb-4 flex justify-center items-center">
                    <i id="iconThemDongXe" class="fa-solid fa-plus mr-2 text-lg text-gray-400 cursor-pointer hover:text-[#ff0000]"></i>
                    <input 
                        type="text"
                        placeholder="Thêm dòng xe"
                        class="w-full text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2"
                        id="themDongXe"
                    />
                </div> 
                <div class="mb-4 flex justify-center items-center">
                    <i id="iconTimDongXe" class="fa-solid fa-search mr-2 text-lg text-gray-400 cursor-pointer hover:text-[#ff0000]"></i>
                    <input 
                        type="text"
                        placeholder="Tìm tên dòng xe"
                        class="w-full text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2"
                        id="tenDongXe"
                    />
                </div>
                <div id="listSeries">
                </div>
            </div>
        </div>
        
        <div class="w-full h-screen absolute top-0 flex items-center justify-center hidden" id="addInsurance">
            <div class="absolute w-full h-[100vh] bg-gray-400 opacity-75"></div>
            <div class="z-10 w-1/3 h-4/5 h-auto bg-white relative z-10 rounded-lg px-5 py-7 shadow-lg shadow-black">
                <div class="flex flex-row justify-between items-center mb-7">
                    <p class="text-xl font-medium">THÊM BẢO HIỂM</p>
                    <i class="fa-solid fa-x text-lg font-black cursor-pointer hover:text-[#ff0000]" onclick="showAddInsurance()"></i>
                </div>
                <div class="mb-4">
                    <div class="mr-2">
                        <p class="font-medium mb-1">Biển số xe</p>
                        <select id="selectedBSX" class="border border-gray-300 rounded-lg h-9 text-black w-full cursor-pointer bg-[#e4e4e4]">
                        
                        </select>
                    </div>
                </div>
                <div class="mb-4">
                    <div class="mr-2">
                        <p class="font-medium mb-1">Mã bảo hiểm</p>
                        <select id="selectedInsuranceForBSX" class="border border-gray-300 rounded-lg h-9 text-black w-full cursor-pointer bg-[#e4e4e4]">

                        </select>
                    </div>
                </div>
                <div class="w-full flex justify-center items-center h-10">
                    <button onclick="addInsuranceForExistCar()" class="w-1/3 h-full px-4 cursor-pointer bg-blue text-white rounded-lg">
                        <p class="text-lg font-medium">Thêm</p>
                    </button>
                </div>
            </div>
        </div>
        
        <!-- update car -->
        <div class="w-full h-screen absolute top-0 flex items-center justify-center hidden" id="updateCar">
            <div class="absolute w-full h-[100vh] bg-gray-400 opacity-75"></div>
            <div class="z-10 w-1/3 h-4/5 h-auto bg-white relative z-10 rounded-lg px-5 py-7 shadow-lg shadow-black">
                <div class="flex flex-row justify-between items-center mb-7">
                    <p class="text-xl font-medium">CHỈNH SỬA XE</p>
                    <i class="fa-solid fa-x text-lg font-black cursor-pointer hover:text-[#ff0000]" onclick="showUpdateCar()"></i>
                </div>
                <div class="mb-4">
                    <p class="font-medium mb-1">Biển số xe</p>
                    <div class="flex flex-row items-center gap-4 h-8">
                        <select id="updateSelectedBXS" class="border border-gray-300 rounded-lg h-10 cursor-pointer text-black w-full bg-[#e4e4e4]">
                        
                        </select>
                        <input 
                            disabled
                            type="text"
                            placeholder="Biển số xe"
                            class="w-full bg-[#e4e4e4] text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2"
                            id="updateBSX"
                        />
                    </div>
                </div>
                <div class="mb-4">
                    <p class="font-medium mb-1">Ngày mua</p>
                    <input 
                        disabled
                        type="date"
                        class="w-full bg-[#e4e4e4] text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2 pr-2"
                        id="updateNgayMua"
                    />
                </div>
                <div class="mb-4">
                    <p class="font-medium mb-1">Giá mua</p>
                    <input 
                        disabled
                        type="text"
                        placeholder="Giá mua"
                        class="w-full bg-[#e4e4e4] text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2"
                        id="updateGiaXe"
                    />
                </div>
                <div class="mb-4">
                    <p class="font-medium mb-1">Ghi chú</p>
                    <input 
                        disabled
                        type="text"
                        placeholder="Giá mua"
                        class="w-full bg-[#e4e4e4] text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2"
                        id="updateGhiChu"
                    />
                </div>
                <div class="w-full flex justify-center items-center h-10">
                    <button onclick="updateCar()" class="w-1/3 h-full px-4 cursor-pointer bg-blue text-white rounded-lg">
                        <p class="text-lg font-medium">Chỉnh sửa</p>
                    </button>
                </div>
            </div>
        </div>
        
        <!-- delete car -->
        <div class="w-full h-screen absolute top-0 flex items-center justify-center hidden" id="deleteCar">
            <div class="absolute w-full h-[100vh] bg-gray-400 opacity-75"></div>
            <div class="z-10 w-1/3 h-4/5 h-auto bg-white relative z-10 rounded-lg px-5 py-7 shadow-lg shadow-black">
                <div class="flex flex-row justify-between items-center mb-7">
                    <p class="text-xl font-medium">XÓA XE</p>
                    <i class="fa-solid fa-x text-lg font-black cursor-pointer hover:text-[#ff0000]" onclick="showDeleteCar()"></i>
                </div>
                <div class="mb-4">
                    <p class="font-medium mb-1">Biển số xe</p>
                    <div class="flex flex-row items-center gap-4 h-8">
                        <select id="deleteSelectedBXS" class="border border-gray-300 rounded-lg h-10 cursor-pointer text-black w-full bg-[#e4e4e4]">
                        
                        </select>
                    </div>
                </div>
                <div class="mb-4">
                    <p class="font-medium mb-1">Ngày mua</p>
                    <input 
                        disabled
                        type="date"
                        class="w-full bg-[#e4e4e4] text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2 pr-2"
                        id="deleteNgayMua"
                    />
                </div>
                <div class="mb-4">
                    <p class="font-medium mb-1">Giá mua</p>
                    <input 
                        disabled
                        type="text"
                        placeholder="Giá mua"
                        class="w-full bg-[#e4e4e4] text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2"
                        id="deleteGiaXe"
                    />
                </div>
                <div class="mb-4">
                    <p class="font-medium mb-1">Ghi chú</p>
                    <input 
                        disabled
                        type="text"
                        placeholder="Giá mua"
                        class="w-full bg-[#e4e4e4] text-[#7c7c7c] text-base rounded-lg outline-none h-9 indent-2"
                        id="deleteGhiChu"
                    />
                </div>
                <div class="w-full flex justify-center items-center h-10">
                    <button onclick="deleteCar()" class="w-1/3 h-full px-4 cursor-pointer bg-blue text-white rounded-lg">
                        <p class="text-lg font-medium">Xóa</p>
                    </button>
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
    <script src="../js/garage_v5.js"></script>
</html>
