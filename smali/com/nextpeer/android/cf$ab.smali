.class public final enum Lcom/nextpeer/android/cf$ab;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/cf$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/cf$ab;

.field public static final enum b:Lcom/nextpeer/android/cf$ab;

.field public static final enum c:Lcom/nextpeer/android/cf$ab;

.field public static final enum d:Lcom/nextpeer/android/cf$ab;

.field private static final synthetic f:[Lcom/nextpeer/android/cf$ab;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/nextpeer/android/cf$ab;

    const-string v1, "TablerMessage"

    invoke-direct {v0, v1, v5, v2}, Lcom/nextpeer/android/cf$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/cf$ab;->a:Lcom/nextpeer/android/cf$ab;

    new-instance v0, Lcom/nextpeer/android/cf$ab;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/cf$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/cf$ab;->b:Lcom/nextpeer/android/cf$ab;

    new-instance v0, Lcom/nextpeer/android/cf$ab;

    const-string v1, "Disconnect"

    invoke-direct {v0, v1, v3, v4}, Lcom/nextpeer/android/cf$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/cf$ab;->c:Lcom/nextpeer/android/cf$ab;

    new-instance v0, Lcom/nextpeer/android/cf$ab;

    const-string v1, "ErrorMessage"

    invoke-direct {v0, v1, v4, v6}, Lcom/nextpeer/android/cf$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/cf$ab;->d:Lcom/nextpeer/android/cf$ab;

    new-array v0, v6, [Lcom/nextpeer/android/cf$ab;

    sget-object v1, Lcom/nextpeer/android/cf$ab;->a:Lcom/nextpeer/android/cf$ab;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/cf$ab;->b:Lcom/nextpeer/android/cf$ab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/cf$ab;->c:Lcom/nextpeer/android/cf$ab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/cf$ab;->d:Lcom/nextpeer/android/cf$ab;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nextpeer/android/cf$ab;->f:[Lcom/nextpeer/android/cf$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/cf$ab;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/cf$ab;
    .locals 1

    const-class v0, Lcom/nextpeer/android/cf$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/cf$ab;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/cf$ab;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/cf$ab;->f:[Lcom/nextpeer/android/cf$ab;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/cf$ab;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/cf$ab;->e:I

    return v0
.end method
