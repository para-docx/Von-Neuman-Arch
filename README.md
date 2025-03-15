# Von Neumann Architecture in Verilog  

This project implements a **Von Neumann Architecture** in Verilog, inspired by **Navabi’s book**. It features:  

🔹 **Control Unit** – FSM-based instruction sequencing  
🔹 **Datapath** – ALU, registers, memory, and all processor components  
🔹 **Instruction & Memory Handling** –  
   - Fetches instructions from a **hexadecimal memory file**  
   - Executes operations based on the **opcode**  

## 📁 Structure  
- `control_unit.v` – FSM-driven control logic  
- `datapath.v` – ALU, registers, memory  
- `memory.hex` – Stores program instructions  
- `instruction_file.txt` – Contains instruction set  
- `top_module.v` – Integrates control unit & datapath

## 📝 Design

<img src="https://i.ibb.co/kgvVQWWw/Screenshot-2025-03-15-180838.png" alt="Screenshot-2025-03-15-180838" border="0">
