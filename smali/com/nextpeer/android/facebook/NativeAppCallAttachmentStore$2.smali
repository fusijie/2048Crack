.class Lcom/nextpeer/android/facebook/NativeAppCallAttachmentStore$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/NativeAppCallAttachmentStore$ProcessAttachment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nextpeer/android/facebook/NativeAppCallAttachmentStore$ProcessAttachment",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/NativeAppCallAttachmentStore;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/NativeAppCallAttachmentStore;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/NativeAppCallAttachmentStore$2;->this$0:Lcom/nextpeer/android/facebook/NativeAppCallAttachmentStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processAttachment(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    invoke-static {v3}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v3}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public bridge synthetic processAttachment(Ljava/lang/Object;Ljava/io/File;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/nextpeer/android/facebook/NativeAppCallAttachmentStore$2;->processAttachment(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method
