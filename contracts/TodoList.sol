// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList {
    struct Task {
        string taskName;
        bool isCompleted;
    }

    Task[] public tasks;

    // Fungsi untuk membuat task baru
    function createTask(string memory _taskName) public {
        tasks.push(Task(_taskName, false));
    }

    // Fungsi untuk menghapus task
    function deleteTask(uint _index) public {
        require(_index < tasks.length, "Task does not exist.");

        // Mengganti task yang akan dihapus dengan yang terakhir, lalu menghapus yang terakhir
        tasks[_index] = tasks[tasks.length - 1];
        tasks.pop();
    }

    // Fungsi untuk memperbarui task
    function updateTask(
        uint _index,
        string memory _newTaskName,
        bool _isCompleted
    ) public {
        require(_index < tasks.length, "Task does not exist.");

        tasks[_index].taskName = _newTaskName;
        tasks[_index].isCompleted = _isCompleted;
    }

    // Fungsi untuk mendapatkan jumlah task
    function getTaskCount() public view returns (uint) {
        return tasks.length;
    }

    // Fungsi untuk mendapatkan task berdasarkan indeks
    function getTask(
        uint _index
    ) public view returns (string memory taskName, bool isCompleted) {
        require(_index < tasks.length, "Task does not exist.");
        Task storage task = tasks[_index];
        return (task.taskName, task.isCompleted);
    }
}
