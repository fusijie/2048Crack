.class final Lcom/nextpeer/android/fk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/ex$ab;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/ex$ab;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/fk;->a:Lcom/nextpeer/android/ex$ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_fb_friends_item_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/av$ab;

    iget-object v1, p0, Lcom/nextpeer/android/fk;->a:Lcom/nextpeer/android/ex$ab;

    invoke-static {v1}, Lcom/nextpeer/android/ex$ab;->a(Lcom/nextpeer/android/ex$ab;)Lcom/nextpeer/android/ex;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/ex;->b(Lcom/nextpeer/android/ex;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, v0, Lcom/nextpeer/android/av$ab;->d:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_fb_friends_list_button_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/fk;->a:Lcom/nextpeer/android/ex$ab;

    invoke-static {v0}, Lcom/nextpeer/android/ex$ab;->a(Lcom/nextpeer/android/ex$ab;)Lcom/nextpeer/android/ex;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/ex;->c(Lcom/nextpeer/android/ex;)V

    return-void
.end method
