package BookMarket.dto;

public class Book
{
    // 도서 아이디
    private String bookId;
    // 도서명
    private String name;
    // 가격
    private Integer unitPrice;
    // 저자
    private String author;
    // 설명
    private String description;
    // 출판사
    private String publisher;
    // 분류
    private String category;
    // 재고 수
    private long unitsInStock;
    // 페이지 수
    private long totalPages;
    // 출판일(월/년)
    private long releaseDate;
    // 신규 도서 or 중고 도서 or E-Book
    private String condition;

    public Book(String bookId, String name, Integer unitPrice)
    {
        this.bookId = bookId;
        this.name = name;
        this.unitPrice = unitPrice;
    }

    public String getBookId()
    {
        return bookId;
    }

    public void setBookId(String bookId)
    {
        this.bookId = bookId;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public Integer getUnitPrice()
    {
        return unitPrice;
    }

    public void setUnitPrice(Integer unitPrice)
    {
        this.unitPrice = unitPrice;
    }

    public String getAuthor()
    {
        return author;
    }

    public void setAuthor(String author)
    {
        this.author = author;
    }

    public String getDescription()
    {
        return description;
    }

    public void setDescription(String description)
    {
        this.description = description;
    }

    public String getPublisher()
    {
        return publisher;
    }

    public void setPublisher(String publisher)
    {
        this.publisher = publisher;
    }

    public String getCategory()
    {
        return category;
    }

    public void setCategory(String category)
    {
        this.category = category;
    }

    public long getUnitsInStock()
    {
        return unitsInStock;
    }

    public void setUnitsInStock(long unitsInStock)
    {
        this.unitsInStock = unitsInStock;
    }

    public long getTotalPages()
    {
        return totalPages;
    }

    public void setTotalPages(long totalPages)
    {
        this.totalPages = totalPages;
    }

    public long getReleaseDate()
    {
        return releaseDate;
    }

    public void setReleaseDate(long releaseDate)
    {
        this.releaseDate = releaseDate;
    }

    public String getCondition()
    {
        return condition;
    }

    public void setCondition(String condition)
    {
        this.condition = condition;
    }
}
