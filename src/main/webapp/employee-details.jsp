        .form-container button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .form-container button:hover {
            background-color: #45a049;
        }
        .bold-text {
            font-weight: bold;
        }
        .back-button {
            display: inline-block;
            padding: 10px 20px;
            color: white;
            background-color: #f44336;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }
        .back-button:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
    <h2 class="bold-text">Employee Details</h2>

    <div class="form-container">
        <form action="GetEmployeeDetailsServlet" method="get">
            <label for="employee_id">Enter Employee ID:</label>
            <input type="text" id="employee_id" name="employee_id" required>
            <button type="submit">Get Details</button>
        </form>
    </div>

    <hr>

    <h3 class="bold-text">Employee Details</h3>

    <table>
        <thead>
            <tr>
                <th>Employee ID</th>
                <th>Username</th>
                <th>Full Name</th>
                <th>Role</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Date of Birth</th>
                <th>Address</th>
                <th>Date of Joining</th>
                <th>Manager Alloted</th>
            </tr>
        </thead>
        <tbody>
            <c:if test="${not empty employee}">
                <tr>
                    <td>${employee.employeeId}</td>
                    <td>${employee.username}</td>
                    <td>${employee.fullname}</td>
                    <td>${employee.role}</td>
                    <td>${employee.email}</td>
                    <td>${employee.phoneNumber}</td>
                    <td>${employee.dob}</td>
                    <td>${employee.address}</td>
                    <td>${employee.dateOfJoining}</td>
                    <td>${employee.managerAlloted}</td>
                </tr>
            </c:if>
        </tbody>
    </table>

    <a href="adminHome.jsp" class="back-button">Back</a>
</body>
</html>
