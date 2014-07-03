.class public final Lcom/nextpeer/android/gx$af;
.super Lcom/nextpeer/android/gx$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/gx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "af"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/gx$af$aa;,
        Lcom/nextpeer/android/gx$af$ab;,
        Lcom/nextpeer/android/gx$af$ac;,
        Lcom/nextpeer/android/gx$af$ad;
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
.field private b:Lcom/nextpeer/android/gx$af$aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nextpeer/android/gx$af$aa;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nextpeer/android/as;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ui/customize/customize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nextpeer/android/gx$ab;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/nextpeer/android/gx$af;->b:Lcom/nextpeer/android/gx$af$aa;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/nextpeer/android/gx$ae;)Lcom/nextpeer/android/gx$ab;
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/gx$ab;->a(Lcom/nextpeer/android/gx$ae;)Lcom/nextpeer/android/gx$ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nextpeer/android/gx$af$ad;)Lcom/nextpeer/android/gx$af;
    .locals 3

    invoke-virtual {p0}, Lcom/nextpeer/android/gx$af;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sc"

    invoke-virtual {p1}, Lcom/nextpeer/android/gx$af$ad;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final a(Lcom/nextpeer/android/hg;)Lcom/nextpeer/android/gx$af;
    .locals 3

    invoke-virtual {p0}, Lcom/nextpeer/android/gx$af;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cdl"

    invoke-virtual {p1}, Lcom/nextpeer/android/hg;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final bridge synthetic a()Lcom/nextpeer/android/gx;
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/gx$ab;->a()Lcom/nextpeer/android/gx;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nextpeer/android/gx$af$ab;Lcom/nextpeer/android/gx$af$ac;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "network"

    invoke-virtual {p1}, Lcom/nextpeer/android/gx$af$ab;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "result"

    invoke-virtual {p2}, Lcom/nextpeer/android/gx$af$ac;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nextpeer/android/gx$af;->a:Lcom/nextpeer/android/gx;

    const-string v2, "socialSignIn"

    invoke-static {v2, v0}, Lcom/nextpeer/android/hs;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/gx;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/nextpeer/android/gx$af$ac;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    invoke-virtual {p1}, Lcom/nextpeer/android/gx$af$ac;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nextpeer/android/gx$af;->a:Lcom/nextpeer/android/gx;

    const-string v2, "login"

    invoke-static {v2, v0}, Lcom/nextpeer/android/hs;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/gx;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "socialSignIn"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/gx$af;->b:Lcom/nextpeer/android/gx$af$aa;

    if-eqz v0, :cond_0

    const-string v0, "network"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/gx$af;->b:Lcom/nextpeer/android/gx$af$aa;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/nextpeer/android/gx$af$ab;->a(I)Lcom/nextpeer/android/gx$af$ab;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/nextpeer/android/gx$af$aa;->a(Lcom/nextpeer/android/gx$af;Lcom/nextpeer/android/gx$af$ab;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const-string v0, "login"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "userId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sessionToken"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/gx$af;->b:Lcom/nextpeer/android/gx$af$aa;

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nextpeer/android/gx$af;->b:Lcom/nextpeer/android/gx$af$aa;

    invoke-interface {v2, v0, v1}, Lcom/nextpeer/android/gx$af$aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "launchDashboard"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/gx$af;->b:Lcom/nextpeer/android/gx$af$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gx$af;->b:Lcom/nextpeer/android/gx$af$aa;

    invoke-interface {v0, p0}, Lcom/nextpeer/android/gx$af$aa;->a(Lcom/nextpeer/android/gx$af;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
