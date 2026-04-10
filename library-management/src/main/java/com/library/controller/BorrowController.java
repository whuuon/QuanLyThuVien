package com.library.controller;

import com.library.service.IBorrowService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/borrow")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class BorrowController {

    private final IBorrowService borrowService;

    @PostMapping("/{memberId}/{documentId}")
    public ResponseEntity<String> borrowDocument(@PathVariable Long memberId, @PathVariable Long documentId) {
        borrowService.borrowDocument(memberId, documentId);
        return ResponseEntity.ok("Mượn tài liệu thành công!");
    }

    @PostMapping("/return/{transactionId}")
    public ResponseEntity<String> returnDocument(@PathVariable Long transactionId) {
        borrowService.returnDocument(transactionId);
        return ResponseEntity.ok("Trả tài liệu thành công!");
    }
}