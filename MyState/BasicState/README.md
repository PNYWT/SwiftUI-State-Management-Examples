# BasicState

โฟลเดอร์นี้รวมตัวอย่างพื้นฐานของการจัดการ state ใน SwiftUI สำหรับใช้ประกอบบทความช่วงเริ่มต้นของซีรีส์ **Back to Basic SwiftUI State Management**

## เนื้อหาในหมวดนี้

หมวด `BasicState` จะโฟกัสที่แนวคิดพื้นฐานก่อน ได้แก่

- `@State`
- `@Binding`

## โครงสร้าง

```text
BasicState/
  State/
  Binding/
```

## `State`

อยู่ในโฟลเดอร์ [State](/Users/arpopanda/Desktop/State%20Management/MyState/BasicState/State)

ตัวอย่างในหมวดนี้แสดงการใช้ `@State` เพื่อเก็บข้อมูลที่เป็นสถานะภายในของ view เช่น

- ค่าที่ใช้แสดงผลบนหน้าจอ
- loading state
- form input
- selected item
- toggle state
- navigation state

## `Binding`

อยู่ในโฟลเดอร์ [Binding](/Users/arpopanda/Desktop/State%20Management/MyState/BasicState/Binding)

ตัวอย่างในหมวดนี้แสดงการใช้ `@Binding` เพื่อส่ง state จาก parent view ไปยัง child view เพื่อให้ child สามารถอ่านและแก้ไขค่าจาก source of truth เดิมได้

หัวข้อที่มีจะสอดคล้องกับฝั่ง `@State` เพื่อให้เปรียบเทียบกันได้ง่าย

- ค่าที่ใช้แสดงผลบนหน้าจอ
- loading state
- form input
- selected item
- toggle state
- navigation state

## จุดประสงค์ของหมวดนี้

- ปูพื้นฐานเรื่อง data flow ใน SwiftUI
- ทำความเข้าใจว่าใครเป็นเจ้าของข้อมูล
- เห็นความต่างระหว่าง state ที่ view ถือเอง กับ state ที่ถูกส่งต่อไปยัง view อื่น

