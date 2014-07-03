.class public Lcom/mdotm/android/utils/MdotMBase64$InputStream;
.super Ljava/io/FilterInputStream;
.source "MdotMBase64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/utils/MdotMBase64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1852
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mdotm/android/utils/MdotMBase64$InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1853
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .parameter "in"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1881
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1882
    iput p2, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->options:I

    .line 1883
    and-int/lit8 v0, p2, 0x8

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->breakLines:Z

    .line 1884
    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->encode:Z

    .line 1885
    iget-boolean v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->bufferLength:I

    .line 1886
    iget v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->buffer:[B

    .line 1887
    const/4 v0, -0x1

    iput v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    .line 1888
    iput v2, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->lineLength:I

    .line 1889
    #calls: Lcom/mdotm/android/utils/MdotMBase64;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/mdotm/android/utils/MdotMBase64;->access$0(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->decodabet:[B

    .line 1890
    return-void

    :cond_0
    move v0, v2

    .line 1883
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1884
    goto :goto_1

    .line 1885
    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 1903
    iget v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    if-gez v3, :cond_1

    .line 1904
    iget-boolean v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->encode:Z

    if-eqz v3, :cond_4

    .line 1905
    new-array v0, v4, [B

    .line 1906
    .local v0, b3:[B
    const/4 v2, 0x0

    .line 1907
    .local v2, numBinaryBytes:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-lt v8, v4, :cond_2

    .line 1920
    :cond_0
    if-lez v2, :cond_3

    .line 1921
    iget-object v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->buffer:[B

    iget v5, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->options:I

    move v4, v1

    #calls: Lcom/mdotm/android/utils/MdotMBase64;->encode3to4([BII[BII)[B
    invoke-static/range {v0 .. v5}, Lcom/mdotm/android/utils/MdotMBase64;->access$1([BII[BII)[B

    .line 1922
    iput v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    .line 1923
    iput v10, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->numSigBytes:I

    .line 1966
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v8           #i:I
    :cond_1
    :goto_1
    iget v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    if-ltz v3, :cond_e

    .line 1968
    iget v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    iget v4, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->numSigBytes:I

    if-lt v3, v4, :cond_b

    move v1, v9

    .line 1987
    :goto_2
    return v1

    .line 1908
    .restart local v0       #b3:[B
    .restart local v2       #numBinaryBytes:I
    .restart local v8       #i:I
    :cond_2
    iget-object v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1911
    .local v6, b:I
    if-ltz v6, :cond_0

    .line 1912
    int-to-byte v3, v6

    aput-byte v3, v0, v8

    .line 1913
    add-int/lit8 v2, v2, 0x1

    .line 1907
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v6           #b:I
    :cond_3
    move v1, v9

    .line 1926
    goto :goto_2

    .line 1932
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v8           #i:I
    :cond_4
    new-array v7, v10, [B

    .line 1933
    .local v7, b4:[B
    const/4 v8, 0x0

    .line 1934
    .restart local v8       #i:I
    const/4 v8, 0x0

    :goto_3
    if-lt v8, v10, :cond_6

    .line 1949
    :cond_5
    if-ne v8, v10, :cond_9

    .line 1950
    iget-object v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->buffer:[B

    iget v4, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->options:I

    #calls: Lcom/mdotm/android/utils/MdotMBase64;->decode4to3([BI[BII)I
    invoke-static {v7, v1, v3, v1, v4}, Lcom/mdotm/android/utils/MdotMBase64;->access$2([BI[BII)I

    move-result v3

    iput v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->numSigBytes:I

    .line 1951
    iput v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    goto :goto_1

    .line 1936
    :cond_6
    const/4 v6, 0x0

    .line 1938
    .restart local v6       #b:I
    :cond_7
    iget-object v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1939
    if-ltz v6, :cond_8

    .line 1940
    iget-object v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    aget-byte v3, v3, v4

    const/4 v4, -0x5

    .line 1937
    if-le v3, v4, :cond_7

    .line 1942
    :cond_8
    if-ltz v6, :cond_5

    .line 1946
    int-to-byte v3, v6

    aput-byte v3, v7, v8

    .line 1934
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1953
    .end local v6           #b:I
    :cond_9
    if-nez v8, :cond_a

    move v1, v9

    .line 1954
    goto :goto_2

    .line 1958
    :cond_a
    new-instance v1, Ljava/io/IOException;

    .line 1959
    const-string v3, "Improperly padded Base64 input."

    .line 1958
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1972
    .end local v7           #b4:[B
    .end local v8           #i:I
    :cond_b
    iget-boolean v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->encode:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->breakLines:Z

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_c

    .line 1973
    iput v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->lineLength:I

    .line 1974
    const/16 v1, 0xa

    goto :goto_2

    .line 1977
    :cond_c
    iget v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->lineLength:I

    .line 1981
    iget-object v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->buffer:[B

    iget v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    aget-byte v6, v1, v3

    .line 1983
    .restart local v6       #b:I
    iget v1, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    iget v3, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->bufferLength:I

    if-lt v1, v3, :cond_d

    .line 1984
    iput v9, p0, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->position:I

    .line 1987
    :cond_d
    and-int/lit16 v1, v6, 0xff

    goto :goto_2

    .line 1994
    .end local v6           #b:I
    :cond_e
    new-instance v1, Ljava/io/IOException;

    .line 1995
    const-string v3, "Error in Base64 code reading stream."

    .line 1994
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .locals 4
    .parameter "dest"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2018
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p3, :cond_1

    .line 2029
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v1

    .line 2019
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/mdotm/android/utils/MdotMBase64$InputStream;->read()I

    move-result v0

    .line 2021
    .local v0, b:I
    if-ltz v0, :cond_2

    .line 2022
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 2018
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2023
    :cond_2
    if-nez v1, :cond_0

    .line 2024
    const/4 v1, -0x1

    goto :goto_1
.end method
