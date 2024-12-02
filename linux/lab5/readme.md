# Disk Management and Logical Volume Setup

This guide provides step-by-step instructions for attaching and managing a 20GB disk in a Linux virtual machine, partitioning it, and configuring its sections as specified.

## Objective

- Attach a 20GB disk to the VM.
- Partition it into the following sections:
  - *5GB* for a file system.
  - *5GB* for a Volume Group (VG) with a Logical Volume (LV).
  - *3GB* to extend the Logical Volume.
  - *2GB* as swap space.


---

## Steps

### *1. Attach a 20GB Disk to the VM*

- Access the virtualization platform (e.g., VirtualBox, VMware, or cloud service).
- Add a new *20GB* disk to the virtual machine.



### **2. Create Two new Partition
Open the fdisk utility:
sudo fdisk /dev/sdb
![Partition the Disk](photos/2.png)

### **3. Specify Type for second Partition to be Swap
Open the fdisk utility:
sudo fdisk /dev/sdb
![Specify Type for second Partition to be Swap](photos/3.png)

### **4. Create and Specify Type for last two partition to be lvm
Open the fdisk utility:
sudo fdisk /dev/sdb
![Create and Specify Type for last two partition to be lvm](photos/4.png)

### **5. Checking of Creating Partitions

![Checking of Creating Partitions ](photos/5.png)

### **6. Make file system & type of ext4 for standard partiton

![Make file system & type of ext4 for standard partiton](photos/6.png)

### **7. Mount Partion

![Mount Partiton](photos/7.png)

### **8. Configure Fstab file

![Configure fstab file](photos/8.png)

### **9. mkswap swap partition

![Swap Partition](photos/9.png)

### **10. Make Swap Presistent in fstab

![Make Swap Presistent](photos/10.png)

### **11. make system read configraton from fstab

![Specify Type Swap](photos/11.png)

### **12. Create Physical-Volume & Create Volume-Group & Create Logical-Volume

![Create Physical-Volume & Create Volume-Group & Create Logical-Volume](photos/12.png)

### **13. Extended Logical Volume

![Extended Logical Volume](photos/13.png)

### **14. Check all what have Done!

![Check all what have Done!](photos/14.png)
