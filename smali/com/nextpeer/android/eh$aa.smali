.class abstract Lcom/nextpeer/android/eh$aa;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/nextpeer/android/dn;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/view/LayoutInflater;

.field protected final b:Landroid/content/res/Resources;

.field final synthetic c:Lcom/nextpeer/android/eh;


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/eh;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dn;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nextpeer/android/eh$aa;->c:Lcom/nextpeer/android/eh;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nextpeer/android/eh$aa;->a:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/nextpeer/android/eh;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/eh$aa;->b:Landroid/content/res/Resources;

    return-void
.end method
