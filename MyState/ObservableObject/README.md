# ObservableObject

โฟลเดอร์นี้คือชุดตัวอย่างสำหรับ **Back to Basic SwiftUI State Management ที่ควรรู้ - PART 2**

ลิงก์บทความ:

- [Back to Basic SwiftUI State Management ที่ควรรู้ Part 2](https://medium.com/@punyawat.codercamp/back-to-basic-swiftui-state-management-%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%84%E0%B8%A7%E0%B8%A3%E0%B8%A3%E0%B8%B9%E0%B9%89-part-2-b7cb62e0fc98)

ใน part นี้เราจะเริ่มขยับจาก state ที่อยู่ใน `View` ไปสู่การแยก state และ logic ออกมาไว้ใน ViewModel

## หัวข้อในหมวดนี้

- `ObservableObject`
- `@StateObject`
- `@ObservedObject`

## โครงสร้าง

```text
ObservableObject/
  README.md
  ViewModel/
    CounterViewModel.swift
  StateObject/
    CounterStateObjectView.swift
  ObservedObject/
    CounterObservedObjectView.swift
```

## ลำดับการเรียนรู้ที่แนะนำ

1. `CounterViewModel.swift`
2. `CounterStateObjectView.swift`
3. `CounterObservedObjectView.swift`

## แนวคิดสำคัญ

- `ObservableObject` คือ protocol ที่มักถูก adopt โดย class ที่ใช้เป็น ViewModel
- `@StateObject` ใช้เมื่อ View เป็นคนสร้างและถือ ViewModel เอง
- `@ObservedObject` ใช้เมื่อ View รับ ViewModel จากภายนอกมา observe ต่อ

## หมายเหตุ

หมวด `Observation framework (iOS 17+)` จะถูกแยกไปอยู่ใน PART 3 เพื่อให้ลำดับการเรียนรู้ค่อย ๆ ต่อจากแนวทางเดิมของ `ObservableObject`
