.class public Lcom/umeng/fb/util/DeflaterHelper;
.super Ljava/lang/Object;
.source "DeflaterHelper.java"


# static fields
.field public static TOTAL_LEN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deflaterCompress(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/fb/util/DeflaterHelper;->deflaterCompress([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static deflaterCompress([B)[B
    .locals 8
    .param p0, "bin"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 41
    if-eqz p0, :cond_0

    array-length v6, p0

    if-gtz v6, :cond_1

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 64
    :goto_0
    return-object v2

    .line 45
    :cond_1
    new-instance v3, Ljava/util/zip/Deflater;

    invoke-direct {v3}, Ljava/util/zip/Deflater;-><init>()V

    .line 46
    .local v3, "deflater":Ljava/util/zip/Deflater;
    invoke-virtual {v3, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 47
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    .line 49
    const/16 v6, 0x2000

    new-array v0, v6, [B

    .line 50
    .local v0, "buf":[B
    sput v7, Lcom/umeng/fb/util/DeflaterHelper;->TOTAL_LEN:I

    .line 51
    const/4 v4, 0x0

    .line 53
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .local v5, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 55
    invoke-virtual {v3, v0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v1

    .line 56
    .local v1, "byteCount":I
    sget v6, Lcom/umeng/fb/util/DeflaterHelper;->TOTAL_LEN:I

    add-int/2addr v6, v1

    sput v6, Lcom/umeng/fb/util/DeflaterHelper;->TOTAL_LEN:I

    .line 57
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 61
    .end local v1    # "byteCount":I
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_2
    throw v6

    .line 59
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 63
    :cond_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 64
    .local v2, "compressedBytes":[B
    goto :goto_0

    .line 61
    .end local v2    # "compressedBytes":[B
    .end local v5    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    goto :goto_2
.end method

.method public static deflaterDecompress([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # [B
    .param p1, "charEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p0}, Lcom/umeng/fb/util/DeflaterHelper;->deflaterDecompress([B)[B

    move-result-object v0

    .line 79
    .local v0, "array":[B
    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 83
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deflaterDecompress([B)[B
    .locals 7
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 87
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    .line 104
    :goto_0
    return-object v5

    .line 88
    :cond_1
    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2}, Ljava/util/zip/Inflater;-><init>()V

    .line 91
    .local v2, "inflater":Ljava/util/zip/Inflater;
    const/4 v5, 0x0

    array-length v6, p0

    invoke-virtual {v2, p0, v5, v6}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 92
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 95
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 96
    .local v3, "len":I
    const/4 v1, 0x0

    .line 97
    .local v1, "count":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v5

    if-nez v5, :cond_2

    .line 98
    invoke-virtual {v2, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    .line 99
    invoke-virtual {v4, v0, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 100
    add-int/2addr v1, v3

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 104
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto :goto_0
.end method
