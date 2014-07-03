.class public final Lcom/nextpeer/android/gx$ac;
.super Lcom/nextpeer/android/gx$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/gx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/gx$ac$aa;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nextpeer/android/gx$ab",
        "<",
        "Lcom/nextpeer/android/gx$ac;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/nextpeer/android/gx$ac$aa;

.field private c:Lcom/nextpeer/android/av$ab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nextpeer/android/gx$ac$aa;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nextpeer/android/as;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "fb/feed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nextpeer/android/gx$ab;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/nextpeer/android/gx$ac;->b:Lcom/nextpeer/android/gx$ac$aa;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/nextpeer/android/gx$ae;)Lcom/nextpeer/android/gx$ab;
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/gx$ab;->a(Lcom/nextpeer/android/gx$ae;)Lcom/nextpeer/android/gx$ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nextpeer/android/av$ab;)Lcom/nextpeer/android/gx$ac;
    .locals 3

    iget-object v0, p1, Lcom/nextpeer/android/av$ab;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nextpeer/android/gx$ac;->b()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fn"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/nextpeer/android/av$ab;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nextpeer/android/gx$ac;->b()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ft"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nextpeer/android/gx$ac;->c:Lcom/nextpeer/android/av$ab;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/nextpeer/android/gx$ac;
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/gx$ac;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fm"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic a()Lcom/nextpeer/android/gx;
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/gx$ab;->a()Lcom/nextpeer/android/gx;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "fbCancel"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/gx$ac;->b:Lcom/nextpeer/android/gx$ac$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gx$ac;->b:Lcom/nextpeer/android/gx$ac$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/gx$ac$aa;->a()V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/gx$ac;->a:Lcom/nextpeer/android/gx;

    invoke-virtual {v0}, Lcom/nextpeer/android/gx;->dismiss()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const-string v0, "fbSuccess"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/gx$ac;->b:Lcom/nextpeer/android/gx$ac$aa;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/gx$ac;->b:Lcom/nextpeer/android/gx$ac$aa;

    invoke-interface {v0, p0}, Lcom/nextpeer/android/gx$ac$aa;->a(Lcom/nextpeer/android/gx$ac;)V

    :cond_3
    iget-object v0, p0, Lcom/nextpeer/android/gx$ac;->a:Lcom/nextpeer/android/gx;

    invoke-virtual {v0}, Lcom/nextpeer/android/gx;->dismiss()V

    goto :goto_0

    :cond_4
    const-string v0, "fbError"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/gx$ac;->b:Lcom/nextpeer/android/gx$ac$aa;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nextpeer/android/gx$ac;->b:Lcom/nextpeer/android/gx$ac$aa;

    invoke-interface {v1, v0}, Lcom/nextpeer/android/gx$ac$aa;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final c()Lcom/nextpeer/android/av$ab;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gx$ac;->c:Lcom/nextpeer/android/av$ab;

    return-object v0
.end method
