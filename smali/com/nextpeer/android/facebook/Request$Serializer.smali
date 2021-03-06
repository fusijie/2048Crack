.class Lcom/nextpeer/android/facebook/Request$Serializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/Request$KeyValueSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation


# instance fields
.field private firstWrite:Z

.field private final logger:Lcom/nextpeer/android/facebook/internal/Logger;

.field private final outputStream:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/BufferedOutputStream;Lcom/nextpeer/android/facebook/internal/Logger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->firstWrite:Z

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->logger:Lcom/nextpeer/android/facebook/internal/Logger;

    return-void
.end method


# virtual methods
.method public varargs write(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->firstWrite:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->firstWrite:Z

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    return-void
.end method

.method public writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "image/png"

    invoke-virtual {p0, p1, p1, v0}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeRecordBoundary()V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->logger:Lcom/nextpeer/android/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Image>"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;[B)V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "content/unknown"

    invoke-virtual {p0, p1, p1, v0}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    const-string v0, ""

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeRecordBoundary()V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->logger:Lcom/nextpeer/android/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Data: %d>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Content-Disposition: form-data; name=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const-string v0, "; filename=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Content-Type"

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string p3, "content/unknown"

    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x2000

    :try_start_2
    new-array v2, v0, [B

    move v0, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    const-string v1, ""

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeRecordBoundary()V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->logger:Lcom/nextpeer/android/facebook/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<Data: %d>"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/nextpeer/android/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/2addr v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public writeFile(Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;)V
    .locals 2

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public varargs writeLine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/nextpeer/android/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "\r\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    #calls: Lcom/nextpeer/android/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z
    invoke-static {p2}, Lcom/nextpeer/android/facebook/Request;->access$0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    #calls: Lcom/nextpeer/android/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {p2}, Lcom/nextpeer/android/facebook/Request;->access$1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeBytes(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;

    if-eqz v0, :cond_4

    check-cast p2, Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;

    invoke-virtual {p0, p1, p2}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Lcom/nextpeer/android/facebook/Request$ParcelFileDescriptorWithMimeType;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a supported type: String, Bitmap, byte[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeRecordBoundary()V
    .locals 4

    const-string v0, "--%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/Request$Serializer;->writeRecordBoundary()V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->logger:Lcom/nextpeer/android/facebook/internal/Logger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Request$Serializer;->logger:Lcom/nextpeer/android/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/nextpeer/android/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
