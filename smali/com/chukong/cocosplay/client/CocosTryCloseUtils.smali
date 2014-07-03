.class public final Lcom/chukong/cocosplay/client/CocosTryCloseUtils;
.super Ljava/lang/Object;
.source "CocosTryCloseUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tryClose(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 65
    const/4 p0, 0x0

    .line 66
    goto :goto_0
.end method

.method public static tryClose(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 87
    const/4 p0, 0x0

    .line 89
    :cond_0
    return-void
.end method

.method public static tryClose(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 74
    if-eqz p0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 76
    const/4 p0, 0x0

    .line 78
    :cond_0
    return-void
.end method

.method public static tryClose(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 116
    if-eqz p0, :cond_0

    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 123
    return-void

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static tryClose(Ljava/io/FileInputStream;)V
    .locals 1
    .parameter "fStream"

    .prologue
    .line 106
    if-eqz p0, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 113
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static tryClose(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 31
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static tryClose(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static tryClose(Ljava/io/Reader;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static tryClose(Ljava/net/DatagramSocket;)V
    .locals 0
    .parameter "socket"

    .prologue
    .line 96
    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 98
    :cond_0
    const/4 p0, 0x0

    .line 99
    return-void
.end method

.method public static tryClose(Ljava/util/zip/ZipFile;)V
    .locals 1
    .parameter "zipFile"

    .prologue
    .line 130
    if-eqz p0, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method
