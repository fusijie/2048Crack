.class final enum Lcom/nextpeer/android/facebook/SessionState$Category;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/SessionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/facebook/SessionState$Category;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSED_CATEGORY:Lcom/nextpeer/android/facebook/SessionState$Category;

.field public static final enum CREATED_CATEGORY:Lcom/nextpeer/android/facebook/SessionState$Category;

.field private static final synthetic ENUM$VALUES:[Lcom/nextpeer/android/facebook/SessionState$Category;

.field public static final enum OPENED_CATEGORY:Lcom/nextpeer/android/facebook/SessionState$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/facebook/SessionState$Category;

    const-string v1, "CREATED_CATEGORY"

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/facebook/SessionState$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/SessionState$Category;->CREATED_CATEGORY:Lcom/nextpeer/android/facebook/SessionState$Category;

    new-instance v0, Lcom/nextpeer/android/facebook/SessionState$Category;

    const-string v1, "OPENED_CATEGORY"

    invoke-direct {v0, v1, v3}, Lcom/nextpeer/android/facebook/SessionState$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/SessionState$Category;->OPENED_CATEGORY:Lcom/nextpeer/android/facebook/SessionState$Category;

    new-instance v0, Lcom/nextpeer/android/facebook/SessionState$Category;

    const-string v1, "CLOSED_CATEGORY"

    invoke-direct {v0, v1, v4}, Lcom/nextpeer/android/facebook/SessionState$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/SessionState$Category;->CLOSED_CATEGORY:Lcom/nextpeer/android/facebook/SessionState$Category;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nextpeer/android/facebook/SessionState$Category;

    sget-object v1, Lcom/nextpeer/android/facebook/SessionState$Category;->CREATED_CATEGORY:Lcom/nextpeer/android/facebook/SessionState$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/facebook/SessionState$Category;->OPENED_CATEGORY:Lcom/nextpeer/android/facebook/SessionState$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/facebook/SessionState$Category;->CLOSED_CATEGORY:Lcom/nextpeer/android/facebook/SessionState$Category;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nextpeer/android/facebook/SessionState$Category;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/SessionState$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/facebook/SessionState$Category;
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/SessionState$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/SessionState$Category;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/facebook/SessionState$Category;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/facebook/SessionState$Category;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/SessionState$Category;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/facebook/SessionState$Category;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
