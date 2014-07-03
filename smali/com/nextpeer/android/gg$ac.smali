.class final Lcom/nextpeer/android/gg$ac;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/gg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ac"
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/gg;


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/gg;J)V
    .locals 2

    iput-object p1, p0, Lcom/nextpeer/android/gg$ac;->a:Lcom/nextpeer/android/gg;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 0

    return-void
.end method

.method public final onTick(J)V
    .locals 9

    const v2, 0x15180

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    div-int v1, v0, v2

    rem-int/2addr v0, v2

    div-int/lit16 v2, v0, 0xe10

    rem-int/lit16 v0, v0, 0xe10

    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    iget-object v4, p0, Lcom/nextpeer/android/gg$ac;->a:Lcom/nextpeer/android/gg;

    invoke-static {v4}, Lcom/nextpeer/android/gg;->i(Lcom/nextpeer/android/gg;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "%02d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nextpeer/android/gg$ac;->a:Lcom/nextpeer/android/gg;

    invoke-static {v1}, Lcom/nextpeer/android/gg;->j(Lcom/nextpeer/android/gg;)Landroid/widget/TextView;

    move-result-object v1

    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nextpeer/android/gg$ac;->a:Lcom/nextpeer/android/gg;

    invoke-static {v1}, Lcom/nextpeer/android/gg;->k(Lcom/nextpeer/android/gg;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nextpeer/android/gg$ac;->a:Lcom/nextpeer/android/gg;

    invoke-static {v1}, Lcom/nextpeer/android/gg;->l(Lcom/nextpeer/android/gg;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%02d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/gg$ac;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0}, Lcom/nextpeer/android/gg;->e(Lcom/nextpeer/android/gg;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/nextpeer/android/gg;->a(Lcom/nextpeer/android/gg;I)V

    return-void
.end method
