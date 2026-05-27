# SwiftUI State Management Examples

คลังตัวอย่างโค้ดสำหรับซีรีส์บทความ **Back to Basic SwiftUI State Management**

repo นี้ตั้งใจทำไว้เป็นตัวอย่างประกอบบทความ โดยเริ่มจากพื้นฐานของการจัดการ state ใน SwiftUI และจะค่อย ๆ ขยายไปสู่แนวทางที่ลึกขึ้นในตอนถัด ๆ ไป

ลิงก์บทความ:

- [Back to Basic SwiftUI State Management ที่ควรรู้ Part 1](https://medium.com/@punyawat.codercamp/back-to-basic-swiftui-state-management-%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%84%E0%B8%A7%E0%B8%A3%E0%B8%A3%E0%B8%B9%E0%B9%89-part-1-5ee9492c041b)

## เป้าหมายของ Repo

repo นี้ถูกออกแบบมาเพื่อใช้เป็นตัวช่วยในการอ่านบทความซีรีส์นี้ โดยมีแนวคิดหลักดังนี้

- ทำตัวอย่างให้เล็ก อ่านง่าย และหยิบไปทดลองต่อได้ทันที
- แยกอธิบายทีละแนวคิด เพื่อให้เห็นบทบาทของแต่ละ property wrapper ชัดเจน
- ช่วยให้เข้าใจ data flow ใน SwiftUI ได้ง่ายขึ้น
- ใช้เป็นพื้นที่เปรียบเทียบแนวทางแบบเดิมและแบบใหม่เมื่อซีรีส์ขยายต่อ

## หัวข้อที่ซีรีส์นี้จะครอบคลุม

หัวข้อที่ตั้งใจจะค่อย ๆ เพิ่มเข้ามาใน repo นี้ เช่น

- `@State`
- `@Binding`
- `ObservableObject`
- `@ObservedObject`
- `@StateObject`
- `Observation` สำหรับ iOS 17
- แนวคิดที่เกี่ยวข้องกับ data flow ใน SwiftUI

## โครงสร้างปัจจุบัน

```text
MyState/
  BasicState/
    State/
    Binding/
```

## ตัวอย่างที่มีอยู่ตอนนี้

### `@State`

อยู่ในโฟลเดอร์ `MyState/BasicState/State`

- ค่าที่ใช้แสดงผลบนหน้าจอ
- loading state
- form input
- selected item
- toggle state
- navigation state

### `@Binding`

อยู่ในโฟลเดอร์ `MyState/BasicState/Binding`

- ค่าที่ใช้แสดงผลบนหน้าจอ
- loading state
- form input
- selected item
- toggle state
- navigation state

ตัวอย่าง `@Binding` ใน repo นี้จะจัดให้เห็นความสัมพันธ์ชัด ๆ ว่า

- parent view เป็นเจ้าของ source of truth ด้วย `@State`
- child view รับค่าผ่าน `@Binding`
- child view สามารถเปลี่ยนค่าที่ parent ถืออยู่ได้

## แผนสำหรับตอนถัดไป

ตอนต่อ ๆ ไปของซีรีส์จะค่อย ๆ เพิ่มตัวอย่างในเรื่องต่อไปนี้

- `ObservableObject`
- `@ObservedObject`
- `@StateObject`
- การเปรียบเทียบรูปแบบการถือ ownership ของข้อมูล
- `Observation` ใน iOS 17
- แนวทางย้ายจากรูปแบบเดิมไปสู่รูปแบบใหม่

## แนวทางของโปรเจกต์นี้

repo นี้ตั้งใจให้เป็นแหล่งเรียนรู้ มากกว่าจะเป็น production app

ดังนั้นโครงสร้างภายในจะเน้นสิ่งเหล่านี้

- แยกโฟลเดอร์ตามหัวข้อเพื่อให้ค้นง่าย
- ทำตัวอย่างให้เรียบง่ายก่อน เพื่อให้โฟกัสที่แนวคิด
- ยอมให้มีโค้ดซ้ำได้ หากช่วยให้การอธิบายเข้าใจง่ายขึ้น

## เหมาะกับใคร

repo นี้เหมาะกับ

- คนที่เริ่มต้นเรียน SwiftUI
- คนที่อยากทบทวนเรื่อง state management แบบพื้นฐาน
- คนที่อ่านบทความและอยากเปิดดูตัวอย่างควบคู่กัน
- คนที่อยากเปรียบเทียบ `@State`, `@Binding` และแนวทางใหม่ของ SwiftUI

## หมายเหตุ

- ตัวอย่างบางส่วนในอนาคตอาจต้องใช้ iOS เวอร์ชันใหม่ โดยเฉพาะหัวข้อ `Observation`
- โครงสร้างของ repo อาจขยายเพิ่มตามเนื้อหาของบทความในแต่ละตอน

