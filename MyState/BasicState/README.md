# BasicState

โฟลเดอร์นี้คือชุดตัวอย่างสำหรับ **Back to Basic SwiftUI State Management ที่ควรรู้ - PART 1**

ใน part นี้จะโฟกัสกับแนวคิดพื้นฐานที่สุดของ state management ใน SwiftUI ก่อน เพื่อให้เข้าใจว่า state อยู่ที่ไหน เปลี่ยนค่าอย่างไร และข้อมูลถูกส่งต่อระหว่าง view แบบไหน

## หัวข้อในหมวดนี้

- `@State`
- `@Binding`

## โครงสร้าง

```text
BasicState/
  README.md
  State/
  Binding/
```

## `State`

อยู่ในโฟลเดอร์ [State](/Users/arpopanda/Desktop/State%20Management/MyState/BasicState/State)

ตัวอย่างในหมวดนี้ใช้ `@State` เพื่อเก็บข้อมูลที่เป็นสถานะภายในของ view เช่น

- ค่าที่ใช้แสดงผลบนหน้าจอ
- loading state
- form input
- selected item
- toggle state
- navigation state

## `Binding`

อยู่ในโฟลเดอร์ [Binding](/Users/arpopanda/Desktop/State%20Management/MyState/BasicState/Binding)

ตัวอย่างในหมวดนี้ใช้ `@Binding` เพื่อส่ง state จาก parent view ไปยัง child view เพื่อให้ child สามารถอ่านและแก้ไขค่าจาก source of truth เดิมได้

หัวข้อของฝั่ง `@Binding` จะสอดคล้องกับฝั่ง `@State` เพื่อให้เปรียบเทียบกันได้ง่าย

- ค่าที่ใช้แสดงผลบนหน้าจอ
- loading state
- form input
- selected item
- toggle state
- navigation state

## ลำดับการเรียนรู้ที่แนะนำ

1. กลุ่มตัวอย่าง `@State`
2. กลุ่มตัวอย่าง `@Binding`
3. เปรียบเทียบว่า view ไหนเป็นเจ้าของข้อมูล และ view ไหนรับข้อมูลไปใช้งานต่อ

## แนวคิดสำคัญ

- `@State` ใช้เมื่อข้อมูลนั้นเป็น state ภายในของ view
- `@Binding` ใช้เมื่อ view ลูกต้องแก้ไขค่าที่ถูกถืออยู่โดย view แม่
- part นี้เป็นพื้นฐานสำคัญก่อนขยับไป `ObservableObject`, `@StateObject` และ `@ObservedObject`
