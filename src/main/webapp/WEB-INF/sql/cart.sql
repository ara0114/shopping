use webtest;
drop table cart;
CREATE TABLE IF NOT EXISTS `webtest`.`cart` (
  `cartno` INT NOT NULL AUTO_INCREMENT COMMENT '장바구니 번호',
  `count` INT NOT NULL,  # 수량
  `contentsno` INT NOT NULL,
  `id` VARCHAR(10) NOT NULL,
  `size` VARCHAR(3) NULL,
  PRIMARY KEY (`cartno`),
  CONSTRAINT `fk_cart_contents1`
    FOREIGN KEY (`contentsno`)
    REFERENCES `webtest`.`contents` (`contentsno`)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT `fk_cart_member1`
    FOREIGN KEY (`id`)
    REFERENCES `webtest`.`member` (`id`)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
select * from cart;

select 
c.contentsno, c.pname, c.price, c.filename,
t.cartno, t.size, t.count, t.id
from contents c inner join cart t
on c.contentsno = t.contentsno
where t.id = 'user1';  # 부모가 cart, 자식이 contents. 카트당 상품 1개?...카트테이블안에 상품테이블의 정보저장 cartdto안에 contentsdto저장




delete from cart;